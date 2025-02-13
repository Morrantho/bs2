STIL Value UnaFold( OpCode op, ParseNode *rhs )
{
	#include "fold_table.h"
	goto *ops[ op ];
	#include "fold_labels.h"
}

STIL ParseNode UnaConst( OpCode op, ParseNode *rhs )
{
	ParseNode node = { .type = PT_CONST, .value.type = rhs->value.type };
	node.value = UnaFold( op, rhs );
	return node;
}

STIL ParseNode UnaRef( OpCode op, ParseNode *rhs )
{
	return ( ParseNode ){ 0 };
}

STIL ParseNode UnaCall( OpCode op, ParseNode *rhs )
{
	return ( ParseNode ){ 0 };
}

ParseNode CompileUna( TokenType token_type, ParseNode *rhs )
{
	#include "ir_table.h"
	OpCode op = TkToOp( token_type );
	goto *irs[ rhs->type ];
	#include "ir_labels.h"
}