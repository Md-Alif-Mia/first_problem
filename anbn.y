%{
    #include <stdio.h>
    #include <stdlib.h>

    // Declare yylex function to avoid implicit declaration warning
    int yylex();
    void yyerror(const char *s);  // Correct declaration for yyerror
%}
%start S
%token 'a' 'b'

%%

S : 'a' S 'b'     /* Rule to match an equal number of 'a's and 'b's */
  |               /* or S can be empty (epsilon) */
  ;

%%

int main() {
    printf("Enter expression: ");
    yyparse();
    printf("valid\n");
    return 0;
}

void yyerror(const char *s) {  // Define yyerror correctly
    printf("invalid\n");
    exit(1);
}
