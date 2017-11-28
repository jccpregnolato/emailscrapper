%{
#include <stdio.h>
%}

alphaNum [a-zA-Z0-9]

%%
[\-\.\_]*{alphaNum}+([a-zA-Z0-9_\.-]*{alphaNum})*@{alphaNum}+([a-zA-Z0-9_\.-]*{alphaNum})*[-]+ {
  /*printf("passou 1:%c\n", teste);*/

  
}

{alphaNum}+([a-zA-Z0-9_\.-]*{alphaNum})*@{alphaNum}+([a-zA-Z0-9_\.-]*{alphaNum})* {
  printf("%s\n", yytext);
  /*printf("passou 2\n");*/
}

\t ;



\n ; 
. ; /*se nao der match com nada*/

%%

int main() {
  yylex();
  return ;
}