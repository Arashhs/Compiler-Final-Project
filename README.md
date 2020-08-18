# Compiler-Final-Project
Principles of Compiler Design course project implemented using Bison and JFlex
- Lexical Analysis, Syntax Analysis, Semantic Analysis, and Intermediate Code Generation
implemented using JFlex and Bison for my Compiler Design course project for the grammar which is included in the repository
- Generated code representation is in three address code format

## How to compile
Make sure that you have set up Bison and Flex properly, then run the following code in terminal:

```
bison -L JAVA SHLang.yac -v
del SHLang.java
ren SHLang.cac SHLang.java
javac Yylex.java SHLang.java
java YYParser
gcc compiler.c
```
Alternatively, you can run the ***run.bat*** file.

## Example

__Input__:
```java
Program p1Main;
	Real n1, n2, n3, n4, n5;
Begin
	
	n1 := #20 - #10 / #2;
	n2 := n1 / (#3 + #2);
	n3 := n1 * n2 - #10;	
	
	If(n1 .GT. #2) Then Begin
	
		For n4:=n2 Downto #0 Do Begin
			n3 := n3 + #1;
			n2 := n2 - #1
		End
	End Else
		If(n2 .NE. #3) Then n2 := #80


End;
```
---
__Output__:
```c
#include <stdio.h>

int main() {
	// ////////////////// Symbol Table \\\\\\\\\\\\\\\\\\ \\

	double n1;
	double n2;
	double n3;
	double n4;
	double n5;
	int __SHLangTempVar0;
	int __SHLangTempVar1;
	int __SHLangTempVar2;
	int __SHLangTempVar3;
	int __SHLangTempVar4;
	double __SHLangTempVar5;
	int __SHLangTempVar6;
	int __SHLangTempVar7;
	int __SHLangTempVar8;
	double __SHLangTempVar9;
	double __SHLangTempVar10;
	double __SHLangTempVar11;
	int __SHLangTempVar12;
	double __SHLangTempVar13;
	double __SHLangTempVar14;
	int __SHLangTempVar15;
	int __SHLangTempVar16;
	int __SHLangTempVar17;
	int __SHLangTempVar18;
	double __SHLangTempVar19;
	double __SHLangTempVar20;
	int __SHLangTempVar21;
	double __SHLangTempVar22;
	double __SHLangTempVar23;
	int __SHLangConditionVarn4;
	int __SHLangTempVar24;
	int __SHLangTempVar25;
	int __SHLangTempVar26;
	double __SHLangTempVar27;

	// ////////////////// Quadruples \\\\\\\\\\\\\\\\\\ \\

Line0:		__SHLangTempVar0 = 20;
Line1:		if (__SHLangTempVar0) goto Line3;
Line2:		goto Line3;
Line3:		__SHLangTempVar1 = 10;
Line4:		if (__SHLangTempVar1) goto Line6;
Line5:		goto Line6;
Line6:		__SHLangTempVar2 = 2;
Line7:		if (__SHLangTempVar2) goto Line9;
Line8:		goto Line9;
Line9:		__SHLangTempVar3 = __SHLangTempVar1 / __SHLangTempVar2;
Line10:		if (__SHLangTempVar3) goto Line12;
Line11:		goto Line12;
Line12:		__SHLangTempVar4 = __SHLangTempVar0 - __SHLangTempVar3;
Line13:		if (__SHLangTempVar4) goto Line15;
Line14:		goto Line15;
Line15:		__SHLangTempVar5 = (double) __SHLangTempVar4;
Line16:		n1 = __SHLangTempVar5;
Line17:		printf("%s = %f\n", "n1", n1);
Line18:		goto Line19;
Line19:		if (n1) goto Line21;
Line20:		goto Line21;
Line21:		__SHLangTempVar6 = 3;
Line22:		if (__SHLangTempVar6) goto Line24;
Line23:		goto Line24;
Line24:		__SHLangTempVar7 = 2;
Line25:		if (__SHLangTempVar7) goto Line27;
Line26:		goto Line27;
Line27:		__SHLangTempVar8 = __SHLangTempVar6 + __SHLangTempVar7;
Line28:		if (__SHLangTempVar8) goto Line30;
Line29:		goto Line30;
Line30:		__SHLangTempVar10 = (double) __SHLangTempVar8;
Line31:		__SHLangTempVar9 = n1 / __SHLangTempVar10;
Line32:		if (__SHLangTempVar9) goto Line34;
Line33:		goto Line34;
Line34:		n2 = __SHLangTempVar9;
Line35:		printf("%s = %f\n", "n2", n2);
Line36:		goto Line37;
Line37:		if (n1) goto Line39;
Line38:		goto Line39;
Line39:		if (n2) goto Line41;
Line40:		goto Line41;
Line41:		__SHLangTempVar11 = n1 * n2;
Line42:		if (__SHLangTempVar11) goto Line44;
Line43:		goto Line44;
Line44:		__SHLangTempVar12 = 10;
Line45:		if (__SHLangTempVar12) goto Line47;
Line46:		goto Line47;
Line47:		__SHLangTempVar14 = (double) __SHLangTempVar12;
Line48:		__SHLangTempVar13 = __SHLangTempVar11 - __SHLangTempVar14;
Line49:		if (__SHLangTempVar13) goto Line51;
Line50:		goto Line51;
Line51:		n3 = __SHLangTempVar13;
Line52:		printf("%s = %f\n", "n3", n3);
Line53:		goto Line54;
Line54:		if (n1) goto Line56;
Line55:		goto Line56;
Line56:		__SHLangTempVar15 = 2;
Line57:		if (__SHLangTempVar15) goto Line59;
Line58:		goto Line59;
Line59:		__SHLangTempVar16 = n1 > __SHLangTempVar15;
Line60:		if (__SHLangTempVar16) goto Line62;
Line61:		goto Line100;
Line62:		if (n2) goto Line64;
Line63:		goto Line64;
Line64:		__SHLangTempVar17 = 0;
Line65:		if (__SHLangTempVar17) goto Line67;
Line66:		goto Line67;
Line67:		goto Line92;
Line68:		if (n3) goto Line70;
Line69:		goto Line70;
Line70:		__SHLangTempVar18 = 1;
Line71:		if (__SHLangTempVar18) goto Line73;
Line72:		goto Line73;
Line73:		__SHLangTempVar20 = (double) __SHLangTempVar18;
Line74:		__SHLangTempVar19 = n3 + __SHLangTempVar20;
Line75:		if (__SHLangTempVar19) goto Line77;
Line76:		goto Line77;
Line77:		n3 = __SHLangTempVar19;
Line78:		printf("%s = %f\n", "n3", n3);
Line79:		goto Line80;
Line80:		if (n2) goto Line82;
Line81:		goto Line82;
Line82:		__SHLangTempVar21 = 1;
Line83:		if (__SHLangTempVar21) goto Line85;
Line84:		goto Line85;
Line85:		__SHLangTempVar23 = (double) __SHLangTempVar21;
Line86:		__SHLangTempVar22 = n2 - __SHLangTempVar23;
Line87:		if (__SHLangTempVar22) goto Line89;
Line88:		goto Line89;
Line89:		n2 = __SHLangTempVar22;
Line90:		printf("%s = %f\n", "n2", n2);
Line91:		goto Line97;
Line92:		n4 = n2;
Line93:		__SHLangConditionVarn4 = __SHLangTempVar17 - n4;
Line94:		__SHLangConditionVarn4 = n4 >= __SHLangTempVar17;
Line95:		if (__SHLangConditionVarn4) goto Line68;
Line96:		goto Line115;
Line97:		n4 = n4 - 1;
Line98:		goto Line93;
Line99:		goto Line115;
Line100:		if (n2) goto Line102;
Line101:		goto Line102;
Line102:		__SHLangTempVar24 = 3;
Line103:		if (__SHLangTempVar24) goto Line105;
Line104:		goto Line105;
Line105:		__SHLangTempVar25 = n2 != __SHLangTempVar24;
Line106:		if (__SHLangTempVar25) goto Line108;
Line107:		goto Line115;
Line108:		__SHLangTempVar26 = 80;
Line109:		if (__SHLangTempVar26) goto Line111;
Line110:		goto Line111;
Line111:		__SHLangTempVar27 = (double) __SHLangTempVar26;
Line112:		n2 = __SHLangTempVar27;
Line113:		printf("%s = %f\n", "n2", n2);
Line114:		goto Line115;
Line115:		printf("Process is terminated with no error.\n");
				getchar();
				return 0;
Line116:		printf("Array Error: Index out of bound!\n");
				getchar();
			return -1;
Line117:		printf("Array Error: Invalid array size!\n");
				getchar();
			return -2;
}
```
---
__Result__:
```
n1 = 15.000000
n2 = 3.000000
n3 = 35.000000
n3 = 36.000000
n2 = 2.000000
n3 = 37.000000
n2 = 1.000000
n3 = 38.000000
n2 = 0.000000
n3 = 39.000000
n2 = -1.000000
Process is terminated with no error.
```
