%{
#include "anbn.tab.h"  // Include token definitions from Bison
%}

%%

a   { return 'a'; }
b   { return 'b'; }
\n  { return 0; }       /* End of input */
.   { printf("invalid\n"); exit(1); } /* Report invalid characters */

%%

int yywrap() {
    return 1;
}
