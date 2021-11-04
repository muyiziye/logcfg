all: logcfg
	gcc lex.yy.c -lfl -o logcfg

logcfg: lex.yy.c
	flex LogCfg.l

.PHONY:clean
clean:
	rm -rf lex.yy.c a.out logcfg