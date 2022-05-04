%{
#include<stdio.h>
int lines=0, spaces=0,s_letters=0,c_letters=0, num=0, spl_char=0,total=0;
%}
%%
\n { lines++; spaces++;}
[' '] spaces++;
[A-Z] c_letters++;
[a-z] s_letters++;
[0-9] num++;
. spl_char++;
%%
int main(void)
{
yyin= fopen("input.txt","r");
yylex();
total=s_letters+c_letters+num+spl_char+spaces;
printf(" This File contains ...");
printf("\n\t%d lines", lines);
printf("\n\t%d spaces",spaces);
printf("\n\t%d small letters", s_letters);
printf("\n\t%d capital letters",c_letters);
printf("\n\t%d digits", num);
printf("\n\t%d special characters",spl_char);
printf("\n\tIn total %d characters.\n",total);
return 0;
}
int yywrap()
{
return(1);
}