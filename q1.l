Oct  [o][0-7]+
Hex [0][x|X][0-9A-F]+
Dec	[0-9]+
Nothing [0-9z]+
%%
{Oct} printf("Octal number\n");
{Hex} printf("Hexadecimal\n");
{Dec} printf("Decimal\n"); 
{Nothing} printf("Nothing");
%%
int main()
{
	printf("Enter RE");
	yylex(); 				
}
