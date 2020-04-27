# Compiler-Final-Project
Compiler Design final project used for my Compiler Design Course - Lex , Yacc , JFlex , Intermediate code generation

## How to compile
Make sure that you have set up Bison and Flex properly, then run the following code:

...
bison -L JAVA SHLang.yac -v
del SHLang.java
ren SHLang.cac SHLang.java
javac Yylex.java SHLang.java
java YYParser
gcc compiler.c
...
