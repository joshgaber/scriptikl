%{
  #include "y.tab.h"
  int yyerror(char *s);
%}
%%

[0-9]+    {
            yylval = atoi(yytext);
            return INTEGER;
          }

[-+x|\n]  return *yytext;

[ \t]     ; /* skip whitespace */

.         yyerror("invalid character");

%%

int yywrap(void) {
  return 1;
}
