build:
	@yacc -d scriptikl.y
	@lex scriptikl.l
	@gcc lex.yy.c y.tab.c -oscriptikl

clean:
	@rm -f lex.yy.* y.tab.* scriptikl y.output
