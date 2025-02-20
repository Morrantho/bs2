typedef U32 Op;

typedef enum OpType
{	/* X = extended, S = signed */
	OT_ABC, /* op: 6, dest: 8, a: 9, b: 9 */
	OT_ABX, /* op: 6, a: 8, b: unsigned 18 */
	OT_ASBX, /* op: 6, a: 8, b: signed 18 */
	OT_AX /* op: 6, a: 26 */
} OpType;

STIL Op *OpCommit( U32 *idx )
{
	Compiler *compiler = GetCompiler( );
	Vec *code = GetCode( );
	if( compiler->fn ){ compiler->fn->ncode++; }
	*idx = code->len;
	return VecCommit( code );
}

STIL U32 *OpGet( U32 idx )
{
	return VecGet( GetCode( ), idx );
}

STIL U32 OpAB( U8 O, U16 A, U16 B )
{
	U32 idx;
	*( OpCommit( &idx ) ) =
		( ( O & 63 )   << 26 ) | /* 6 */
		( ( A & 8191 ) << 13 ) | /* 13 */
		( ( B & 8191 ) );		 /* 13 */
	return idx;
}

STIL U32 OpABC( U8 O, U8 A, U16 B, U16 C )
{ /* op: 6, a: 8, b: 9, c: 9 */
	U32 idx;
	*( OpCommit( &idx ) ) =
		( ( O & 63 )  << 26 ) | /* 6 */
		( ( A & 255 ) << 18 ) | /* 8 */
		( ( B & 511 ) << 9 )  | /* 9 */
		( ( C & 511 ) );		/* 9 */
	return idx;
}

STIL U32 OpABX( U8 O, U8 A, U32 BX )
{ /* op: 6, a: 8, b: unsigned 18 */
	U32 idx;
	*( OpCommit( &idx ) ) =
		  ( ( O  & 63 )  << 26 ) |	/* 6 */
		  ( ( A  & 255 ) << 18 ) |	/* 8 */
		  ( ( BX & 262143 ) );		/* 18 */
	return idx;
}

STIL U32 OpASBX( U8 O, U8 A, I32 SBX )
{ /* op: 6, a: 8, b: signed 18 */
	U32 idx;
	U32 bias = SBX + 131071;
	*( I32* )( OpCommit( &idx ) ) =
		  ( ( O   & 63 )  << 26 ) |
		  ( ( A   & 255 ) << 18 ) |
		  ( ( bias & 262143 ) );
	return idx;
}

STIL U32 OpAX( U8 O, U32 AX )
{ /* op: 6, a: 26 */
	U32 idx;
	*( OpCommit( &idx ) ) =
		( ( O & 63 ) << 26 ) |
		( ( AX & 67108863 ) );
	return idx;
}

STIL Void OpLog( Op *op )
{
	// I8 *mode = ModeToStr( op->mode );
	// printf( "%s %c[ %d ], %c[ %d ]\n", OpToStr( op->op ), mode[ 0 ], op->a8, mode[ 1 ], op->b8 );
}

STIL Void OpLogAll( )
{
	Vec *code = GetCode( );
	for( U32 i = 0; i < code->len; i++ )
	{
		OpLog( VecGet( code, i ) );
	}
}