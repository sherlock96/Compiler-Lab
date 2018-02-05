#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char stack[100000],top=-1;

void push(char ch)
{
	top++;
	//printf("pushing");
	stack[top]=ch;
}

char pop()
{
	if(top==-1) return '-1';
	char c=stack[top];
	top--;
	return c; 
}

char peek()
{
	return stack[top];
}

void print()
{
	for(int i=0;i<top;i++)
	{
		printf("%c ",stack[i]);
	}
	printf("\n");
}

int main()
{
	char str[10000];
	gets(str);	
	//puts(str);
	int len=strlen(str);
	str[len]='$';
	str[++len]='\0';

	push('$');

	push('E');
	
	//printf("%c ",peek());
	//printf("hello");
	
	for(int i=0;i<len;)
	{
		char curr=str[i];
		//cout<<peek()<<"   ";
		if(peek()==curr) {
			char c=pop();
			//printf("%c  ",c);
			i++;
		}
		else if(curr=='i' && peek()=='T')
		{
			pop();push('i');
		}
		else if(curr=='i' && peek()=='E')
		{
			pop();push('F');push('T');
		}
		else if(curr=='+')
		{
			pop();push('F');push('T');push('+');
		}
		else if(curr=='$')
		{
			pop();i++;
		}
		else {break;}
		//print();
		if(top==0) break;
	}

	if(top==0) printf("Valid\n");
	else printf("Invalid\n");

	return 0;
}

