%{

#include <stdio.h>

#include <stdlib.h>

%}



%token NUM



%%



start: expr

     ;



expr: expr '+' expr

    | expr '-' expr

    | expr '*' expr

    | expr '/' expr

    | '-' expr

    | '(' expr ')'

    | NUM

    ;

%%



void yyerror(char *s)

{

    printf("Invalid expression\n");

    exit(1);

}



int main()

{

    yyparse();

    return 0;

}

