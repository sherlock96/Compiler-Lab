%token A B
%%
S: A S B
|
;
%%


int main()
{
	printf("Enter Input\n");	
	if(yyparse()==0)
	{
	printf("Valid\n");
	}
	return 0;
}