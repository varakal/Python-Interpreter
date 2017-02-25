%{
#include <iostream>
  int words = 0;
%}
letter      [a-zA-Z]
%option noinput
%option nounput

%%
a          { std::cout << "4"; }
A	   	{ std::cout << "\/\-\\"; }
b	   { std::cout << "6"; }
B		{ std::cout << "\|3"; }
c	   { std::cout << "("; }
C		{ std::cout << "\["; }
d          { std::cout << "[)"; }
D		{ std::cout << "\|\]"; }
e          { std::cout << "\&"; }
E		{ std::cout << "3\|"; }
f          { std::cout << "\]\]\="; }
F		{ std::cout << "\|\{"; }
g          { std::cout << "C\-\_"; }
G		{ std::cout << "\|\[\^"; }
h          { std::cout << "\#"; }
H		{ std::cout << "\/\-\/"; }
i          { std::cout << "\!"; }
I		{ std::cout << "T\_"; }
j	     { std::cout << "\,\|"; }
J		{ std::cout << "\-L"; }
k          { std::cout << "\]\{"; }
K		{ std::cout << "\|\<"; }
l          { std::cout << "\|\_"; }
L		{ std::cout << "t"; }
m          { std::cout << "\(\\\/\)"; }
M		{ std::cout << "\|\^\|"; }
n         { std::cout << "\(\\\)"; }
N		{ std::cout << "\|\^"; }
o          { std::cout << "\(\)"; }
O		{ std::cout << "\[\]"; }
p          { std::cout << "\[\]D"; }
P		{ std::cout << "\|\>"; }
q          { std::cout << "\(\,\)"; }
Q		{ std::cout << "\(\)\,"; }
r          { std::cout << "v"; }
R		{ std::cout << "\|\D\\"; }
s          { std::cout << "\$"; }
S		{ std::cout << "\<\>"; }
t          { std::cout << "\'\]\'"; }
T		{ std::cout << "\-L\-"; }
u          { std::cout << "\(\_\)"; }
U		{ std::cout << "\{\_\}"; }
v          { std::cout << "\\\/"; }
V		{ std::cout << "\[\_\]"; }
w          { std::cout << "\'\/\/"; }
W		{ std::cout << "M"; }
x          { std::cout << "\%"; }
X		{ std::cout << "\>\<"; }
y          { std::cout << "\'\/"; }
Y		{ std::cout << "\>\-"; }
z          { std::cout << "\-\/\_"; }
Z		{ std::cout << "\|\|\|"; }
.          { std::cout << yytext; }
\n         { std::cout << std::endl; }
%%
int yywrap() { return 1; }

