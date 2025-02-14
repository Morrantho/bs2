typedef enum Mode
{
	MODE_LOCAL,
	MODE_CONST,
	MODE_GLOBAL,
	MODE_IMM
} Mode;

typedef struct Op
{
	U8 OP;
	U8 D; /* dest */
	U8 S; /* src */

	U8 M: 2; /* mode: reg / local, const, global, imm ( 0-255 ) */
	U8 DT: 3; /* dest type */
	U8 ST: 3; /* src type */
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
	Compiler *compiler = GetCompiler( );
	// compiler->in_fn = 0;
	// compiler->fn = 0;
	// FnCommit( );
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
	U32 start = fn->ilocals;
	U32 end = ( start + fn->nlocals ) - 1;
	for( ; end >= start; end-- )
	{
		Var *var = VecGet( locals, end );
		if( var->name == name ){ *out_idx = end; return var; }
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
	Vec *globals = GetGlobals( );
	Evar *evar = EnvGet( GetEnv( ), name );
	if( !evar ){ return NULL; }
	*out_idx = evar->idx; /* its globals index */
	return VecGet( globals, evar->idx );
}

STIL U32 OpPush( OpCode OP, U8 D, U8 S, U8 M, U8 DT, U8 ST )
{
	Compiler *compiler = GetCompiler( );
	Vec *code = GetCode( );
	if( compiler->fn ){ compiler->fn->ncode++; }
	Op *op = VecCommit( code );
	op->OP = OP;
	op->D = D; /* dest */
	op->S = S; /* src */
	op->M = M; /* mode */
	op->DT = DT; /* dest type  */
	op->ST = ST; /* src type */
	return code->len - 1;
}

STIL Op *OpGet( U32 idx )
{
	return VecGet( GetCode( ), idx );
}

STIL OpCode TkToOp( TokenType type )
{
	#include "token_op_table.h"
	return token_ops[ type ];
}