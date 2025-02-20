typedef struct Token
{
	TokenType type;
	Value value;
} Token;

typedef struct Lexer
{
	I8 *start;
	I8 *end;
	U32 line;
	U32 col;
} Lexer;

STIL Lexer *GetLexer( )
{
	static Lexer lexer = { 0 };
	return &lexer;
}

STIL Void LexerInit( )
{
	Arena *src = GetSrc( );
	Lexer *lexer = GetLexer( );
	lexer->start = ( I8* )src->base;
	lexer->end = ( I8* )src->base;
	lexer->col = 1;
	lexer->line = 1;
}

STIL Void LexReinit( I8 *src )
{	/* For repl */
	Lexer *lexer = GetLexer( );
	lexer->end = lexer->start = src;
}

STIL Token LexSet( Lexer *lexer, TokenType type, U8 off, U8 len )
{
	lexer->end += len;
	lexer->col += len;
	return ( Token ){ .type = type + off };
}

STIL Token LexEof( Lexer *lexer ){ return LexSet( lexer, TK_EOS, 0, 0 ); }

STIL void LexLine( Lexer *lexer )
{
	lexer->line++;
	lexer->col = 0; 
}

STIL Token LexNot( Lexer *lexer )
{	/* ! != */
	U8 off = ( *lexer->end == '=' );
	return LexSet( lexer, TK_NOT, off, off );
}

STIL Token LexStr( Lexer *lexer )
{
	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	Token token = { .type = TK_STR };
	U32 len = ( lexer->end - lexer->start ) - 1;
	token.value.str = TablePut( GetInterns( ), lexer->start + 1, len );
	lexer->end++;
	lexer->col += len + 2;
	return token;
}

STIL void LexComment( Lexer *lexer )
{	/* # */
	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	lexer->line++;
	lexer->col = 0;
}

STIL Token LexMod( Lexer *lexer )
{	/* % %= */
	U8 off = ( *lexer->end == '=' );
	return LexSet( lexer, TK_MOD, off, off );
}

STIL Token LexBand( Lexer *lexer )
{	/* & &= && */
	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	return LexSet( lexer, TK_BAND, off, off != 0 );
}

STIL Token LexLp( Lexer *lexer ){ return LexSet( lexer, TK_LP, 0, 0 ); }
STIL Token LexRp( Lexer *lexer ){ return LexSet( lexer, TK_RP, 0, 0 ); }

STIL Token LexMul( Lexer *lexer )
{	/* * *= ** **= */
	U8 off = ( *lexer->end == '=' )
		+ ( *lexer->end == '*' ) * 2
		+ ( *( lexer->end + 1 ) == '=' );
	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
}

STIL Token LexAdd( Lexer *lexer )
{	/* +, +=, ++ */
	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	return LexSet( lexer, TK_ADD, off, off != 0 );
}

STIL Token LexComma( Lexer *lexer ){ return LexSet( lexer, TK_COMMA, 0, 0 ); }

STIL Token LexSub( Lexer *lexer )
{	/* -, -=, -- */
	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	return LexSet( lexer, TK_SUB, off, off != 0 );
}

STIL Token LexDot( Lexer *lexer ){ return LexSet( lexer, TK_DOT, 0, 0 ); }

STIL Token LexDiv( Lexer *lexer )
{	/* /, /= */
	U8 off = ( *lexer->end == '=' );
	return LexSet( lexer, TK_DIV, off, off );
}

STIL Token LexNum( Lexer *lexer, Label *NUM, Label **ascii )
{	/* 0-9.0-9 */
	Token token = { .type = TK_I64 };
	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	if( *lexer->end != '.' )
	{
		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
		return token;
	}
	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	token.value.f64 = strtod( lexer->start, &lexer->end );
	return token;
}

STIL Token LexColon( Lexer *lexer )
{	/* : :. :: */
	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	return LexSet( lexer, TK_COLON, off, off != 0 );
}

STIL Token LexSemi( Lexer *lexer )
{	/* ; ;. ;; */
	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	return LexSet( lexer, TK_SEMI, off, off != 0 );
}

STIL Token LexLt( Lexer *lexer )
{	/* < <= << <<= */
	U8 off = ( *lexer->end == '=' )
		+ ( *lexer->end == '<' ) * 2
		+ ( *( lexer->end + 1 ) == '=' );
	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
}

STIL Token LexEq( Lexer *lexer )
{ /* = == */
	U8 off = ( *lexer->end == '=' );
	return LexSet( lexer, TK_EQ, off, off );
}

STIL Token LexGt( Lexer *lexer )
{	/* > >= >> >>= */
	U8 off = ( *lexer->end == '=' )
		+ ( *lexer->end == '>' ) * 2
		+ ( *( lexer->end + 1 ) == '=' );
	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
}

STIL Token LexReturn( Lexer *lexer ){ return LexSet( lexer, TK_RET, 0, 0 ); }

STIL Token LexId( Lexer *lexer, Label *ID, Label *NUM, Label **ascii )
{ /* A-Za-z0-9_ */
	while( ascii[ *( U8* )lexer->end ] == ID
		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	U32 len = lexer->end - lexer->start;
	Token token = { .type = TK_ID };
	token.value.str = TablePut( GetInterns( ), lexer->start + 1, len );
	return token;
}

STIL Token LexLs( Lexer *lexer ){ return LexSet( lexer, TK_LS, 0, 0 ); }
STIL Token LexRs( Lexer *lexer ){ return LexSet( lexer, TK_RS, 0, 0 ); }

STIL Token LexBxor( Lexer *lexer )
{ /* ^ ^= */
	U8 off = ( *lexer->end == '=' );
	return LexSet( lexer, TK_BXOR, off, off );
}

STIL Token LexBnot( Lexer *lexer ){ return LexSet( lexer, TK_BNOT, 0, 0 ); }
STIL Token LexLc( Lexer *lexer ){ return LexSet( lexer, TK_LC, 0, 0 ); }

STIL Token LexBor( Lexer *lexer )
{ /* | |= || */
	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	return LexSet( lexer, TK_BOR, off, off != 0 );
}

STIL Token LexRc( Lexer *lexer ){ return LexSet( lexer, TK_RC, 0, 0 ); }

Token Lex( )
{
	Lexer *lexer = GetLexer( );
	#include "ascii_table.h"
	lexer->start = lexer->end;
	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	#include "ascii_labels.h"
}