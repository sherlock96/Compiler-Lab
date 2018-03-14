%token ID PLUS MINUS MULT DIV X NUM ID2 AND OR NOT XOR 
%left PLUS MINUS
%left MULT DIV
%left AND OR XOR
%left NOT
%%
S: E 
| E1
;
E: E AND E
| E OR E
| E XOR E
| NOT E
| ID
E1: E1 PLUS E1
| E1 MINUS E1
| E1 MULT E1
| E1 DIV E1
| ID2
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