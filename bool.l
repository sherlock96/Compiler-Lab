%{
	#include "y.tab.h"
%}
%%
[0|1] return ID;
"&&" return AND;
"||" return OR;
"^" return XOR;	
"!" return NOT;
. return X;
\n return 0;
