all: logcfg

logcfg: lex.yy.c
	gcc lex.yy.c -lfl -o logcfg

lex.yy.c:
	flex LogCfg.l

.PHONY:clean
clean:
	rm -rf lex.yy.c a.out logcfg