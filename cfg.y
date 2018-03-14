%token ID PLUS MINUS MULT DIV X
%left PLUS MINUS
%left MULT DIV
%%
E: E PLUS E
| E MINUS E
| E MULT E
| E DIV E
| ID
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