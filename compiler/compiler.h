#define X_MODE_ENUM( ENUM ) ENUM,
#define X_MODE_STR( ENUM ) #ENUM,
#define MODE_LIST( PFX, X )\
	X( PFX##GC )\
	X( PFX##GG )\
	X( PFX##GL )\
	X( PFX##GI )\
	X( PFX##LC )\
	X( PFX##LG )\
	X( PFX##LL )\
	X( PFX##LI )

typedef enum Mode
{
	MODE_LIST( MODE_, X_MODE_ENUM )
	MODE_N
} Mode;

STIL I8 *ModeToStr( Mode M )
{
	static I8 *modes[ MODE_N ] = { MODE_LIST( , X_MODE_STR ) };
	return modes[ M ];
}

typedef struct Op
{
	#if ENDIAN_BIG
	U8 spare: 3;
	U8 types: 4; /* promoted / common */
	U8 mode: 3;
	U8 op: 6;
	#elif ENDIAN_LIL
	U8 op: 6;
	U8 mode: 3;
	U8 types: 4; /* promoted / common */
	U8 spare: 3;
	#endif
	U8 dest;
	U8 src;
} Op;

typedef struct Func
{
	// String *name;
	U32 iconsts;
	U32 ilocals;
	U32 icode;
	// U32 iargs;
	U8 nconsts;
	U8 nlocals;
	U16 ncode;
	// U32 nargs;
} Func;

typedef struct Compiler
{
	Func *fn; /* current compiling function */
	U8 in_fn;
} Compiler;

STIL Compiler *GetCompiler( )
{
	static Compiler compiler = { 0 };
	return &compiler;
}

Void FnCommit( )
{
	Compiler *compiler = GetCompiler( );
	Func *fn = VecCommit( GetFuncs( ) );
	fn->iconsts = GetConsts( )->len;
	fn->ilocals = GetLocals( )->len;
	fn->icode = GetCode( )->len;
	fn->nconsts = fn->nlocals = fn->ncode = 0;
	compiler->fn = fn;
}

Void CompilerInit( )
{

}

STIL U32 ConstPush( Value value )
{
	Compiler *compiler = GetCompiler( );
	if( compiler->fn ){ compiler->fn->nconsts++; }
	return VecPush( GetConsts( ), &value );
}

STIL Value *ConstGet( U32 idx )
{
	return VecGet( GetConsts( ), idx );
}

STIL Var *LocalPush( U32 *out_idx, Func *fn, String *name, Value value )
{ /* assert( fn ) */
	fn->nlocals++;
	Vec *locals = GetLocals( );
	Var *var = VecCommit( locals );
	var->name = name;
	var->value = value;
	*out_idx = locals->len - 1;
	return var;
}

STIL Var *LocalGet( U32 *out_idx, Func *fn, String *name )
{
	Vec *locals = GetLocals( );
	if( !fn ){ return NULL; }
	U32 start = fn->ilocals;
	U32 end = ( start + fn->nlocals ) - 1;
	for( ; end >= start; end-- )
	{
		Var *var = VecGet( locals, end );
		if( var->name->offset == name->offset ){ *out_idx = end; return var; }
	}
	return NULL;
}

STIL Var *GlobalPush( U32 *out_idx, String *name, Value value )
{
	Vec *globals = GetGlobals( );
	U32 idx = globals->len;
	Var *var = VecCommit( globals );
	var->name = name;
	var->value = value;
	EnvPut( GetEnv( ), name, idx );
	*out_idx = idx;
	return var;
}

STIL Var *GlobalGet( U32 *out_idx, String *name )
{
	Evar *evar = EnvGet( GetEnv( ), name );
	if( !evar->off ){ return NULL; }
	*out_idx = evar->idx; /* its globals index */
	return EvarToVar( evar );
}

STIL U32 OpPush( OpCode OP, U8 M, U8 T, U8 D, U8 S )
{
	Compiler *compiler = GetCompiler( );
	Vec *code = GetCode( );
	if( compiler->fn ){ compiler->fn->ncode++; }
	Op *op = VecCommit( code );
	op->op = OP;
	op->mode = M;
	op->types = T;
	op->dest = D;
	op->src = S;
	return code->len - 1;
}

STIL Op *OpGet( U32 idx )
{
	return VecGet( GetCode( ), idx );
}

STIL Void OpLog( Op *op )
{
	I8 *mode = ModeToStr( op->mode );
	printf( "%s %c[ %d ], %c[ %d ]\n", OpToStr( op->op ), mode[ 0 ], op->dest, mode[ 1 ], op->src );
}

STIL Void OpLogAll( )
{
	Vec *code = GetCode( );
	for( U32 i = 0; i < code->len; i++ )
	{
		OpLog( VecGet( code, i ) );
	}
}

STIL OpCode TkToOp( TokenType type )
{
	#include "token_op_table.h"
	return token_ops[ type ];
}