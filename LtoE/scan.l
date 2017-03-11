%{
#include <iostream>
  int words = 0;
%}
letter      [a-zA-Z]
%option noinput
%option nounput

%%
4            { std::cout << "a"; }
\/\-\\	   	{ std::cout << "A"; }
6	     { std::cout << "b"; }
\|3		{ std::cout << "B"; }
\(	     { std::cout << "c"; }
\[		{ std::cout << "C"; }
\[\)          { std::cout << "d"; }
\|\]		{ std::cout << "D"; }
\&          { std::cout << "e"; }
3\|		{ std::cout << "E"; }
\]\]\=          { std::cout << "f"; }
\|\{		{ std::cout << "F"; }
C\-\_          { std::cout << "g"; }
\|\[\^		{ std::cout << "G"; }
\#          { std::cout << "h"; }
\/\-\/		{ std::cout << "H"; }
\!          { std::cout << "i"; }
T\_		{ std::cout << "I"; }
\,\|	     { std::cout << "j"; }
\-L		{ std::cout << "J"; }
\]\{          { std::cout << "k"; }
\|\<		{ std::cout << "K"; }
\|\_          { std::cout << "l"; }
t		{ std::cout << "L"; }
\(\\\/\)          { std::cout << "m"; }
\|\^\|		{ std::cout << "M"; }
\(\\\)          { std::cout << "n"; }
\|\^		{ std::cout << "N"; }
\(\)          { std::cout << "o"; }
\[\]		{ std::cout << "O"; }
\[\]D          { std::cout << "p"; }
\|\>		{ std::cout << "P"; }
\(\,\)         { std::cout << "q"; }
\(\)\,		{ std::cout << "Q"; }
v          { std::cout << "r"; }
\|\D\\		{ std::cout << "R"; }
\$          { std::cout << "s"; }
\<\>		{ std::cout << "S"; }
\'\]\'          { std::cout << "t"; }
\-L\-		{ std::cout << "T"; }
\(\_\)          { std::cout << "u"; }
\{\_\}		{ std::cout << "U"; }
\\\/          { std::cout << "v"; }
\[\_\]		{ std::cout << "V"; }
\'\/\/          { std::cout << "w"; }
M		{ std::cout << "M"; }
\%          { std::cout << "x"; }
\>\<		{ std::cout << "X"; }
\'\/          { std::cout << "y"; }
\>\-		{ std::cout << "Y"; }
\-\/\_          { std::cout << "z"; }
\|\|\|		{ std::cout << "Z"; }
.          { std::cout << yytext; }
\n         { std::cout << std::endl; }
%%
int yywrap() { return 1; }

