%{
	
%}

digit	[0-9]
wspc	[ \t]

%%

"+"		{printf("PLUS\n");}
"-"		{printf("MINUS\n");}
"*"		{printf("TIMES\n");}
"/"		{printf("DIVIDE\n");}
"|"		{printf("ABS\n");}
{digit}+	{printf("NUMBER\n");}
\n		{printf("NEWLINE\n");}
{wspc}+		{}
.		{printf("Mystery character %s\n", yytext);}

%%
