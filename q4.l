Pos [+][0-9]+
Neg [-][0-9]+
%{
	int local=0,global=0,c=0,check=1;
%}
%%
[{] c++;
[}] c--;
[@] local++;
[@][@] global++; 
.
%%
int main()
{
	yyin=fopen("input4.txt","r");
	if(yylex()==0)
	{
		printf("local- %d\nglobal- %d\n",local,global); 	
		//printf("Count%d",c);
		if(c==0) printf("Brackets balanced\n");
		else printf("Brackets not balanced\n");
	}
	//yyout=fopen("file_ouput.txt","w");
}
