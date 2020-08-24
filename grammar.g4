grammar Oven;

var
	: NAME ':' VALUE

lingot
	: NAME assignments?

assignments
	: '(' var ( repsep(',' var)* )? ')'

NAME
	: [^\s-]+
	;

VALUE
	: .+
	;

WS
    :   [ \t\r\n]+ -> skip
    ;
