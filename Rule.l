LETTER [A-Za-z]
DIGIT [0-9]
%%
{LETTER}({LETTER}|{DIGIT})* {printf("Identifier");}
%%
int main()

	printf("Enter RE");
	yylex();	
}
