%{
#include <stdio.h>
%}
%%
^[a-z A-Z _][a-z A-Z 0-9 _] printf("Valid Identifier "); //regular expression for valid Identifier
^[^a-z A-Z _] printf("Invalid Identifier "); //regular expression for Invalid Identifier
%%
int main()
{
	yylex();
    return 0;
}
int yywrap()
{}