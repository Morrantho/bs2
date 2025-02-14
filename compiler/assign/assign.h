STIL U32 LocalAssign( Func* fn, String *name, ParseNode *rhs )
{
	U32 idx = 0;
	Var *var = LocalGet( &idx, fn, name );
	if( !var ){ var = LocalPush( &idx, fn, name, rhs->value ); }
	return idx;
}

STIL U32 GlobalAssignConst( U32 dest, Var *var )
{
	U32 const_idx = ConstPush( var->value );
	U32 op_idx = OpPush( OP_MOV, dest, const_idx, MODE_CONST, 0, 0 ); 
	return op_idx;
}

STIL U32 GlobalAssignRef( U32 dest, Var *var )
{
	Compiler *compiler = GetCompiler( );
	U32 src = 0;
	Var *ref = LocalGet( &src, compiler->fn, var->value.str );
	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_LOCAL, 0, 0 ); }
	ref = GlobalGet( &src, var->value.str );
	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_GLOBAL, 0, 0 ); }
	I8 *val = ArenaOff( GetStrings( ), var->value.str->offset );
	Throw( "Assignment to undefined reference: %s\n", val );
	return 0;
}

STIL U32 GlobalAssignCall( U32 dest, Var *var )
{
	return 0;
}

STIL U32 GlobalAssign( Var *var, U32 dest, String *name, ParseNode *rhs )
{
	#include "ir_table.h"
	if( !var ){ var = GlobalPush( &dest, name, rhs->value ); }
	var->value = rhs->value;
	goto *types[ rhs->type ];
	CONST: return GlobalAssignConst( dest, var );
	REF: return GlobalAssignRef( dest, var );
	CALL: return GlobalAssignCall( dest, var );
}

U32 CompileAssign( String *name, ParseNode *rhs )
{
	Compiler *compiler = GetCompiler( );
	if( !compiler->fn ){ return GlobalAssign( NULL, 0, name, rhs ); }
	U32 idx = 0;
	Var *var = GlobalGet( &idx, name );
	if( var ){ return GlobalAssign( var, idx, name, rhs ); } /* global reassign */
	return LocalAssign( compiler->fn, name, rhs ); /* local assign or reassign */
}