%{
	#include<stdio.h>
	int yylex();
	int yyerror(char*);
%}
%token ID ID2 PLUS MINUS MULT DIV EQUAL TYPE MAIN IF WHILE OR XOR NOT X 
%left PLUS MINUS
%left MULT DIV
%left AND OR XOR
%left NOT
%%
Program: MAIN  Stmts 
;

Stmts: Stmt Stmts 
	   | Stmt
;

Stmt: DS 
	 | AS
	 | CS
	 | LS
;

DS: TYPE ID
;

AS: ID EQUAL E
	| ID EQUAL BE
;

CS: IF '(' BE ')' '{' Stmts '}'
;

LS: WHILE '(' BE ')' '{' Stmts '}'
;

E: E PLUS E
| E MINUS E
| E MULT E
| E DIV E
| ID
;

BE: BE AND BE
| BE OR BE
| BE XOR BE
| NOT BE
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