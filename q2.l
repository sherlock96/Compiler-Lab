Pos [+][0-9]+
Neg [-][0-9]+
%{

	int c1=0,c2=0,c3=0;
%}
%%
{Pos} {c1++;printf("%s\n",yytext);}
{Neg} {c2++;printf("%s\n",yytext);}
\n c3++;
%%
int main()
{
	yyin=fopen("inputs.txt","r");
	if(yylex()==0)
	{
		printf("Postive count- %d\nNegative Count- %d\n",c1,c2); 	
	}	
}
