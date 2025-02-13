// STIL U32 CompileLocalAssign( Func* fn, String *name, ParseNode *rhs )
// {
// 	U32 idx = 0;
// 	Var *var = LocalGet( &idx, fn, name );
// 	if( !var ){ idx = LocalPush( fn, name, &rhs->value ); }
// 	return idx;
// }

// STIL U32 CompileGlobalConstAssign( U32 dest, ParseNode *rhs )
// {
	
// }

// STIL U32 CompileGlobalAssign( String *name, ParseNode *rhs )
// {
// 	static Label *types[ ] = { &&CONST, &&REF, &&CALL };
// 	Compiler *compiler = GetCompiler( );
// 	U32 dest = 0, src = 0;
// 	Var *var = GlobalGet( &dest, name );
// 	if( !var ){ dest = GlobalPush( name, &rhs->value ); }
// 	else { var->value = &rhs->value; }
// 	goto *types[ rhs->type ];
// 	CONST: return CompileGlobalConstAssign( dest, rhs );
// 	REF: return CompileGlobalRefAssign( dest, rhs );
// 	CALL: return CompileGlobalCallAssign( dest, rhs );
// 	// CONST:
// 	// 	src = ConstPush( rhs->value );
// 	// 	return OpPush( OP_MOV, dest, src, MODE_CONST, 0, 0 );
// 	// REF:
// 	// 	Var *ref = LocalGet( &src, compiler->fn, rhs->value.str );
// 	// 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_LOCAL, 0, 0 ); }
// 	// 	ref = GlobalGet( &src, rhs->value.str );
// 	// 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_GLOBAL, 0, 0 ); }
// 	// 	// Throw( "Assignment to undefined reference: %s\n", rhs->value.str );
// 	// CALL: return 0; /* TODO */
// }

// U32 CompileAssign( String *name, ParseNode *rhs )
// {	/* x: 10 */
// 	static Label *types[ 2 ] = { &&LOCAL, &&GLOBAL };
// 	Compiler *compiler = GetCompiler( );
// 	goto *types[ compiler->fn == NULL ];
// 	LOCAL: return CompileLocalAssign( compiler->fn, name, rhs );
// 	GLOBAL: return CompileGlobalAssign( name, rhs );
// }