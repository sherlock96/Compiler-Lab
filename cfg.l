%{
	#include "y.tab.h"
%}
%%
[0-9] return ID;
"+" return PLUS;
"-" return MINUS;
"*" return MULT;
"/" return DIV;
. return X;
\n return 0;
