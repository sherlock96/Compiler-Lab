%token ID AND OR NOT XOR X
%left AND OR XOR
%left NOT
%%
E: E AND E
| E OR E
| E XOR E
| ID2
;
ID2: ID
| NOT ID
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