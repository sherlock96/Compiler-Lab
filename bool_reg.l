%{
	#include "y.tab.h"
%}
%%
[0|1] return ID;
[a-z] {return ID2;}
"+" return PLUS;
"-" return MINUS;
"*" return MULT;
"&&" return AND;
"||" return OR;
"^" return XOR;	
"!" return NOT;
"/" return DIV;
. return X;
\n return 0;
