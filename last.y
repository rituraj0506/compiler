%{
#include<stdio.h>
#include<string.h>
int yylex(void);
int yyerror(char *s);
int valid=1;
%}

%name parse
%token A B
%%
str:S'\n' {return 0;}
S:A S B
 |
 ;

%%
int main()
{
 printf("Enter the string:\n");
 yyparse();
 if(valid==1)
 printf("Valid String \n");
 else
 printf("Invalid String \n");
 return 0;
}
int yyerror(char *s) {fprintf(stderr,"%s\n",s); return 0;}
