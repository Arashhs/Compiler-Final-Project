package jSHLang;

/* Phase 1
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.*;

class MainClass {
    public static void main(String[] args) {
        FileReader fr = null;
        String input = ".\\files\\Code.shl";
        try {
            fr = new FileReader(input);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        // System.out.println("Lexeme\tToken\tAttribute");
        Yylex yylex = new Yylex(fr);
        try {
            yylex.yylex();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
} */

%%

%byaccj


PROGRAM_KW = (Program)

PROCEDURE_KW = (Procedure)

FUNCTION_KW = (Function)

BEGIN_KW = (Begin)
END_KW = (End)
IF_KW = (If)
THEN_KW = (Then)
ELSE_KW = (Else)
WHILE_KW = (While)
DO_KW = (Do)
FOR_KW = (For)
TO_KW = (To)
DOWNTO_KW = (Downto)
CASE_KW = (Case)
RETURN_KW = (Return)


INTEGER_KW = (Int)
REAL_KW = (Real)
BOOLEAN_KW = (Bool)

AND_THEN_KW = (And\sThen)
OR_ELSE_KW = (Or\sElse)

SEMICOLON_KW = [;]
COLON_KW = [:]
COMMA_KW = [,]
ASS_KW = (:=)

LP_KW = [(]
RP_KW = [)]

EQ_KW = (\.EQ\.)
NE_KW = (\.NE\.)
LE_KW = (\.LE\.)
LT_KW = (\.LT\.)
GE_KW = (\.GE\.)
GT_KW = (\.GT\.)

ADD_KW = [+]
SUB_KW = [-]
MUL_KW = [*]
DIV_KW = [/]

BOOLEAN_CONSTANT = (True)|(False)


IDENTIFIER = [a-zA-Z][0-9][a-zA-Z0-9]*
REAL_CONSTANT = \#(\+|-)?([1-9][0-9]*|0)(\.([0-9]*[1-9]|0))
INTEGER_CONSTANT = \#(\+|-)?[1-9][0-9]*|#0



%%

{PROGRAM_KW} {
	// System.out.println(yytext() + "\t" + "PROGRAM_KW\t" + '-');
	return YYParser.PROGRAM_KW;
}


{PROCEDURE_KW} {
	// System.out.println(yytext() + "\t" + "PROCEDURE_KW\t" + '-');
	return YYParser.PROCEDURE_KW;
}

{FUNCTION_KW} {
	// System.out.println(yytext() + "\t" + "FUNCTION_KW\t" + '-');
	return YYParser.FUNCTION_KW;
}

{INTEGER_KW} {
	// System.out.println(yytext() + "\t" + "INTEGER_KW\t" + '-');
	return YYParser.INTEGER_KW;
}
{REAL_KW} {
	// System.out.println(yytext() + "\t" + "REAL_KW\t" + '-');
	return YYParser.REAL_KW;
}

{BOOLEAN_KW} {
	// System.out.println(yytext() + "\t" + "BOOLEAN_KW\t" + '-');
	return YYParser.BOOLEAN_KW;
}

{IF_KW} {
	// System.out.println(yytext() + "\t" + "IF_KW\t" + '-');
	return YYParser.IF_KW;
}
{THEN_KW} {
	// System.out.println(yytext() + "\t" + "THEN_KW\t" + '-');
	return YYParser.THEN_KW;
}
{ELSE_KW} {
	// System.out.println(yytext() + "\t" + "ELSE_KW\t" + '-');
	return YYParser.ELSE_KW;
}


{WHILE_KW} {
	// System.out.println(yytext() + "\t" + "WHILE_KW\t" + '-');
	return YYParser.WHILE_KW;
}

{FOR_KW} {
	// System.out.println(yytext() + "\t" + "FOR_KW\t" + '-');
	return YYParser.FOR_KW;
}



{CASE_KW} {
	// System.out.println(yytext() + "\t" + "CASE_KW\t" + '-');
	return YYParser.CASE_KW;
}

{BEGIN_KW} {
	// System.out.println(yytext() + "\t" + "BEGIN_KW\t" + '-');
	return YYParser.BEGIN_KW;
}


{END_KW} {
	// System.out.println(yytext() + "\t" + "END_KW\t" + '-');
	return YYParser.END_KW;
}

{RETURN_KW} {
	// System.out.println(yytext() + "\t" + "RETURN_KW\t" + '-');
	return YYParser.RETURN_KW;
}
{DO_KW} {
	// System.out.println(yytext() + "\t" + "DO_KW\t" + '-');
	return YYParser.DO_KW;
}
{AND_THEN_KW} {
	// System.out.println(yytext() + "\t" + "AND_THEN_KW\t" + '-');
	return YYParser.AND_THEN_KW;
}
{OR_ELSE_KW} {
	// System.out.println(yytext() + "\t" + "OR_ELSE_KW\t" + '-');
	return YYParser.OR_ELSE_KW;
}
{TO_KW} {
	// System.out.println(yytext() + "\t" + "TO_KW\t" + '-');
	return YYParser.TO_KW;
}
{DOWNTO_KW} {
	// System.out.println(yytext() + "\t" + "DOWNTO_KW\t" + '-');
	return YYParser.DOWNTO_KW;
}
{SEMICOLON_KW} {
	// System.out.println(yytext() + "\t" + "SEMICOLON_KW\t" + '-');
	return YYParser.SEMICOLON_KW;
}
{COLON_KW} {
	// System.out.println(yytext() + "\t" + "COLON_KW\t" + '-');
	return YYParser.COLON_KW;
}
{COMMA_KW} {
	System.out.println(yytext() + "\t" + "COMMA_KW\t" + '-');
	return YYParser.COMMA_KW;
}
{ASS_KW} {
	// System.out.println(yytext() + "\t" + "ASS_KW\t" + '-');
	return YYParser.ASS_KW;
}
{LP_KW} {
	// System.out.println(yytext() + "\t" + "LP_KW\t" + '-');
	return YYParser.LP_KW;
}
{RP_KW} {
	// System.out.println(yytext() + "\t" + "RP_KW\t" + '-');
	return YYParser.RP_KW;
}
{EQ_KW} {
	// System.out.println(yytext() + "\t" + "EQ_KW\t" + '-');
	return YYParser.EQ_KW;
}
{NE_KW} {
	// System.out.println(yytext() + "\t" + "NE_KW\t" + '-');
	return YYParser.NE_KW;
}
{LE_KW} {
	// System.out.println(yytext() + "\t" + "LE_KW\t" + '-');
	return YYParser.LE_KW;
}
{LT_KW} {
	// System.out.println(yytext() + "\t" + "LT_KW\t" + '-');
	return YYParser.LT_KW;
}
{GE_KW} {
	// System.out.println(yytext() + "\t" + "GE_KW\t" + '-');
	return YYParser.GE_KW;
}
{GT_KW} {
	// System.out.println(yytext() + "\t" + "GT_KW\t" + '-');
	return YYParser.GT_KW;
}

{ADD_KW} {
	// System.out.println(yytext() + "\t" + "ADD_KW\t" + '-');
	return YYParser.ADD_KW;
}
{SUB_KW} {
	// System.out.println(yytext() + "\t" + "SUB_KW\t" + '-');
	return YYParser.SUB_KW;
}
{MUL_KW} {
	// System.out.println(yytext() + "\t" + "MUL_KW\t" + '-');
	return YYParser.MUL_KW;
}
{DIV_KW} {
	// System.out.println(yytext() + "\t" + "DIV_KW\t" + '-');
	return YYParser.DIV_KW;
}

{BOOLEAN_CONSTANT} {
	// System.out.println(yytext() + "\t" + "CHAR_CONSTANT\t" + "-");
	YYParser.lexBoolean = Boolean.parseBoolean(yytext());
	return YYParser.BOOLEAN_CONSTANT;
}





{REAL_CONSTANT}/(\b|\+|\-|\*|"/"|\.GT\.|\.GE\.|\.NE\.|\.EQ\.|\.LT\.|\.LE\.|:=|\n|;|,|\)|\() {
	// System.out.println(yytext() + "\t" + "REAL_CONSTANT\t" + "-");
	YYParser.lexReal = Double.parseDouble(yytext().substring(1));
	return YYParser.REAL_CONSTANT;
}

{INTEGER_CONSTANT}/(\b|\+|\-|\*|"/"|\.GT\.|\.GE\.|\.NE\.|\.EQ\.|\.LT\.|\.LE\.|:=|\n|;|,|\)|\()	{
	// System.out.println(yytext() + "\t" + "INTEGER_CONSTANT\t" + "-");
	YYParser.lexInt = Integer.parseInt(yytext().substring(1));
	return YYParser.INTEGER_CONSTANT;
}

{IDENTIFIER}/(\b|\+|\-|\*|\.GT\.|\.GE\.|\.NE\.|\.EQ\.|\.LT\.|\.LE\.|:=|\n|;|,|\)|\()	{
	// System.out.println(yytext() + "\t" + "IDENTIFIER\t" + "Symbol Table Entry");
	YYParser.lexIdentifier = yytext();
	return YYParser.IDENTIFIER;
}



{REAL_CONSTANT} {
	// System.out.println(yytext() + "\t" + "REAL_CONSTANT\t" + "-");
	YYParser.lexReal = Double.parseDouble(yytext().substring(1));
	return YYParser.REAL_CONSTANT;
}
{INTEGER_CONSTANT} {
	// System.out.println(yytext() + "\t" + "INTEGER_CONSTANT\t" + "-");
	YYParser.lexInt = Integer.parseInt(yytext().substring(1));
	return YYParser.INTEGER_CONSTANT;
}
{IDENTIFIER} {
	// System.out.println(yytext() + "\t" + "IDENTIFIER\t" + "Symbol Table Entry");
	YYParser.lexIdentifier = yytext();
	return YYParser.IDENTIFIER;
}


(#)*{REAL_CONSTANT}({INTEGER_CONSTANT}|{REAL_CONSTANT}|#|[a-z]|[A-Z]|[0-9])+ {
	
	// Error
}

(#)*{INTEGER_CONSTANT}({INTEGER_CONSTANT}|{REAL_CONSTANT}|#|[a-z]|[A-Z]|[0-9])+ {
	
	// Error

}



(#)*{INTEGER_CONSTANT}(PROCEDURE_KW) {
	// Error
	
}


(#)*{REAL_CONSTANT}(PROCEDURE_KW) {
	// Error
	
}

{IDENTIFIER}({INTEGER_CONSTANT}|{REAL_CONSTANT}|#) {
	// Error
	
}


"\s"|"\n"|"\r"|"\t" {
}

. {
}