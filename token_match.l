OCTAL [0-7]
BINARY [01]
HEX [0-9a-f]
ENTER [\n]
DIGIT [0-9]
QUOTE ["]
ALL [.]
ALPHA[a-zA-Z]
KEY ([i][f])|([f][o][r])

%{

	int count1=0,ccount=0;
%}

%%
{KEY} printf("\n%s pre-KEYWORD",yytext);
("#include")(.)* {printf("\n%s PREPROCESSOR STATEMENT",yytext);}
("#define")(.)* {printf("\n%s PREPROCESSOR STATEMENT",yytext);}
("int"|"float"|"while"|"return"|"if"|"for"|"printf"|"scanf"|"include"|"stdio.h") {printf("\n%s KEYWORD",yytext);}
\"(.)*\" {printf("\n%s STRING",yytext);}
("."|";"|"("|")"|","|"{"|"}"|"]"|"["|"?") {printf("\n%s SPECIAL",yytext);}
({ALPHA}|"_"|"$")({ALPHA}|{DIGIT})* {printf("\n%s IDENTIFIER",yytext);}
("+"|"-")?{DIGIT}+ {printf("\n%s CONSTANT",yytext);}
("="|"=="|"+"|"-"|"++"|"--"|"%"|"/"|"&&"|"||"|"*"|"&"|"|"|">"|"<") {printf("\n%s OPERATOR",yytext);}
%%

main()
{
	yyin = fopen("test.c","r");
	yyout  = fopen("out.txt","w");
	yylex();
	fclose(yyin);
}