STIL Value EvalBinErr( Value *lhs, OpCode op, Value *rhs )
{
	Throw( "Illegal Binary Operation: %d", op );
	return ( Value ){ 0 };
}

STIL Value EvalAdd( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 + rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 + rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len + rhs->str->len );
}

STIL Value EvalSub( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 - rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 - rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len - rhs->str->len );
}

STIL Value EvalMul( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 * rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 * rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len * rhs->str->len );
}

STIL Value EvalDiv( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 / rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 / rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len / rhs->str->len );
}

STIL Value EvalMod( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 % rhs->i64 );
	F64: return VALUE( F64, f64, ( I64 )lhs->f64 % ( I64 )rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len % rhs->str->len );
}

STIL Value EvalPow( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->i64, ( F64 )rhs->i64 ) );
	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	STR: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->str->len, ( F64 )rhs->str->len ) );
}

STIL Value EvalBand( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 & rhs->i64 );
	F64: return VALUE( F64, f64, ( I64 )lhs->f64 & ( I64 )rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len & rhs->str->len );
}

STIL Value EvalBor( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 | rhs->i64 );
	F64: return VALUE( F64, f64, ( I64 )lhs->f64 | ( I64 )rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len | rhs->str->len );
}

STIL Value EvalBxor( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 ^ rhs->i64 );
	F64: return VALUE( F64, f64, ( I64 )lhs->f64 ^ ( I64 )rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len ^ rhs->str->len );
}

STIL Value EvalLsh( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 << rhs->i64 );
	F64: return VALUE( F64, f64, ( I64 )lhs->f64 << ( I64 )rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len << rhs->str->len );
}

STIL Value EvalRsh( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 >> rhs->i64 );
	F64: return VALUE( F64, f64, ( I64 )lhs->f64 >> ( I64 )rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len >> rhs->str->len );
}

STIL Value EvalEqEq( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 == rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str == rhs->str );
}

STIL Value EvalNeq( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 != rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str != rhs->str );
}

STIL Value EvalLt( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 < rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len < rhs->str->len );
}

STIL Value EvalLe( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 <= rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len <= rhs->str->len );
}

STIL Value EvalGt( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 > rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len > rhs->str->len );
}

STIL Value EvalGe( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 >= rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str->len >= rhs->str->len );
}

STIL Value EvalAnd( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str && rhs->str );
}

STIL Value EvalOr( Value *lhs, Value *rhs )
{
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	STR: return VALUE( I64, i64, lhs->str || rhs->str );
}

STIL Value EvalMov( Value *lhs, Value *rhs )
{	/* Just return RHS val */
	static Label *ops[ VALUE_N ] = { &&I64, &&F64, &&STR };
	goto *ops[ lhs->type ];
	I64: return VALUE( I64, i64, rhs->i64 );
	F64: return VALUE( F64, f64, rhs->f64 );
	STR: return VALUE( STR, str, rhs->str );
}

STIL Value EvalAddEq( Value *lhs, Value *rhs )
{
	return EvalAdd( lhs, rhs );
}

STIL Value EvalSubEq( Value *lhs, Value *rhs )
{
	return EvalSub( lhs, rhs );
}

STIL Value EvalMulEq( Value *lhs, Value *rhs )
{
	return EvalMul( lhs, rhs );
}

STIL Value EvalDivEq( Value *lhs, Value *rhs )
{
	return EvalDiv( lhs, rhs );
}

STIL Value EvalModEq( Value *lhs, Value *rhs )
{
	return EvalMod( lhs, rhs );
}

STIL Value EvalPowEq( Value *lhs, Value *rhs )
{
	return EvalPow( lhs, rhs );
}

STIL Value EvalBandEq( Value *lhs, Value *rhs )
{
	return EvalBand( lhs, rhs );
}

STIL Value EvalBorEq( Value *lhs, Value *rhs )
{
	return EvalBor( lhs, rhs );
}

STIL Value EvalBxorEq( Value *lhs, Value *rhs )
{
	return EvalBxor( lhs, rhs );
}

STIL Value EvalLshEq( Value *lhs, Value *rhs )
{
	return EvalLsh( lhs, rhs );
}

STIL Value EvalRshEq( Value *lhs, Value *rhs )
{
	return EvalRsh( lhs, rhs );
}