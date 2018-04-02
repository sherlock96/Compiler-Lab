%{
	#include "y.tab.h"
	int yywrap();
%}
%%
"main()" return MAIN;
"+" return PLUS;
"-" return MINUS;
"*" return MULT;
"&&" return AND;
"=" return EQUAL;
"||" return OR;
"^" return XOR;	
"!" return NOT;
"/" return DIV;
"int"|"double"|"float"|"bool" return TYPE;
"if" return IF;
"while" return WHILE;
[a-zA-Z]+ return ID;
[0-9]+ return ID2;
[ ]
\n 
. return X;
%%