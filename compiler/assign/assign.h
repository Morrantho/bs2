STIL U32 AssignConst( U32 dest, Var *var, Mode M )
{
	U32 const_idx = ConstPush( var->value );
	U32 op_idx = OpPush( OP_MOV, M, 0, dest, const_idx ); 
	return op_idx;
}

STIL U32 AssignRef( U32 dest, Var *var, Mode M )
{ /* Mode must be MODE_GC or MODE_LC */
	Compiler *compiler = GetCompiler( );
	U32 src = 0;
	Var *ref = LocalGet( &src, compiler->fn, var->value.str );
	if( ref ){ return OpPush( OP_MOV, M + 2, 0, dest, src ); }
	ref = GlobalGet( &src, var->value.str );
	if( ref ){ return OpPush( OP_MOV, M + 1, 0, dest, src ); }
	I8 *val = ArenaOff( GetStrings( ), var->value.str->offset );
	Throw( "Assignment to undefined reference: %s\n", val );
	return 0;
}

STIL U32 AssignCall( U32 dest, Var *var, Mode M )
{
	return 0;
}

STIL U32 Assign( U32 dest, Var *var, Mode M, ParseType T )
{
	static Label *types[ ] = { &&CONST, &&REF, &&CALL };
	goto *types[ T ];
	CONST: return AssignConst( dest, var, M );
	REF: return AssignRef( dest, var, M );
	CALL: return AssignCall( dest, var, M );
}

STIL U32 GlobalAssign( U32 dest, Var *var, String *name, ParseNode *rhs )
{
	if( !var ){ var = GlobalPush( &dest, name, rhs->value ); }
	var->value = rhs->value;
	return Assign( dest, var, MODE_GC, rhs->type );
}

STIL U32 LocalAssign( Func* fn, String *name, ParseNode *rhs )
{
	U32 dest = 0;
	Var *var = LocalGet( &dest, fn, name );
	if( !var ){ var = LocalPush( &dest, fn, name, rhs->value ); }
	var->value = rhs->value;
	return Assign( dest, var, MODE_LC, rhs->type );
}

U32 CompileAssign( String *name, ParseNode *rhs )
{
	Compiler *compiler = GetCompiler( );
	U32 dest = 0;
	Var *var = GlobalGet( &dest, name );
	if( !compiler->fn ){ return GlobalAssign( dest, var, name, rhs ); }
	if( var ){ return GlobalAssign( dest, var, name, rhs ); } /* global assign */
	return LocalAssign( compiler->fn, name, rhs ); /* local assign */
}