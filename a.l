LETTER [A-Za-z]
DIGIT [0-9]
%%
{LETTER}({LETTER})* {printf("Rule 0");}
{LETTER}({LETTER}|{DIGIT})* {printf("Rule 1");}
%%
int main()
{
	printf("Enter RE");
	yylex();	
	// 
}

