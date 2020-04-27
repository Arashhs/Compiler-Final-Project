bison -L JAVA SHLang.yac -v
del SHLang.java
ren SHLang.cac SHLang.java
javac Yylex.java SHLang.java
java YYParser
gcc compiler.c
pause