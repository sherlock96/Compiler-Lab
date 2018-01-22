Pos [+][0-9]+
Neg [-][0-9]+
%{
	int words=1,chrs=0,lines=1;
%}
%%
\n {lines++;chrs++;words++;}
[ ] {words++;chrs+=yyleng;}
. chrs++;
%%
int main()
{
	yyin=fopen("inputs.txt","r");
	if(yylex()==0)
	{
		printf("Words- %d\n",words); 	
		printf("Lines- %d\n",lines); 
		printf("Characters- %d\n",chrs); 	
	}	
	fclose(yyin);	
}
