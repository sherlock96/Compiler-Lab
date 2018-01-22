%{
	FILE* fp;
	int lineno=1;
%}
%%
[^\n]+ {fprintf(fp,"%s%d\n",yytext,lineno);lineno++;}
%%
int main()
{
	fp=fopen("output5.txt","w");
	yyin=fopen("input4.txt","r");
	if(yylex()==0)
	{	
		printf("Ended");
	}
	//yyout=fopen("file_ouput.txt","w");
}
