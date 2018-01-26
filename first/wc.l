%{
	int chars = 0;
	int words = 0;
	int lines = 0;
%}

word [a-zA-Z]

%%

{word}+		{ words++; chars += strlen(yytext); }
\n		{ chars++; lines++; }
.		{ chars++; }

%%

main(int argc, char **argv){
	yylex();
	printf("%d %d %d\n", lines, words, chars);
	return 0;
}
