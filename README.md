# Compiler-Final-Project
Principles of Compiler Design course project implemented using Bison and JFlex

## How to compile
Make sure that you have set up Bison and Flex properly, then run the following code in terminal:

```
bison -L JAVA SHLang.yac -v
del SHLang.java
ren SHLang.cac SHLang.java
javac Yylex.java SHLang.java
java YYParser
gcc compiler.c
