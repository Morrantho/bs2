#define X_OPCODE_ENUM( ENUM ) ENUM,
#define X_OPCODE_STR( ENUM ) #ENUM,

#define OPCODE_LIST( PFX, X )\
	/* Unary */\
	X( PFX##NOP )\
	X( PFX##NOT )\
	X( PFX##BNOT )\
	X( PFX##PREINC )\
	X( PFX##PREDEC )\
	X( PFX##POSTINC )\
	X( PFX##POSTDEC )\
	/* Binary Arithmetic */\
	X( PFX##ADD )\
	X( PFX##SUB )\
	X( PFX##MUL )\
	X( PFX##DIV )\
	X( PFX##MOD )\
	X( PFX##POW )\
	/* Binary Bitwise Arithmetic */\
	X( PFX##BAND )\
	X( PFX##BOR )\
	X( PFX##BXOR )\
	X( PFX##LSH )\
	X( PFX##RSH )\
	/* Binary Relational */\
	X( PFX##EQ )\
	X( PFX##NEQ )\
	X( PFX##LT )\
	X( PFX##LE )\
	X( PFX##GT )\
	X( PFX##GE )\
	/* Binary Logical */\
	X( PFX##AND )\
	X( PFX##OR )\
	/* Binary Assignments */\
	X( PFX##MOV )\
	X( PFX##ADDEQ )\
	X( PFX##SUBEQ )\
	X( PFX##MULEQ )\
	X( PFX##DIVEQ )\
	X( PFX##MODEQ )\
	X( PFX##POWEQ )\
	X( PFX##BANDEQ )\
	X( PFX##BOREQ )\
	X( PFX##BXOREQ )\
	X( PFX##LSHEQ )\
	X( PFX##RSHEQ )\
	/* Loading */\
	X( PFX##LOADC )\
	X( PFX##LOADG )

typedef enum OpCode
{
	OPCODE_LIST( OP_, X_OPCODE_ENUM )
	OP_N
} OpCode;

/* TODO: Add debug only. Waste of space in release. */
STIL I8 *OpToStr( OpCode op )
{
	static I8 *strings[ OP_N ] = { OPCODE_LIST( , X_OPCODE_STR ) };
	return strings[ op ];
}