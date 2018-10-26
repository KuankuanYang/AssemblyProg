calc3i.exe:
	bison -y -d lexyacc-code/calc3.y -o lexyacc-code/y.tab.c
	flex -o lexyacc-code/lex.yy.c lexyacc-code/calc3.l
	gcc -c lexyacc-code/y.tab.c -o lexyacc-code/y.tab.o
	gcc -c lexyacc-code/lex.yy.c -o lexyacc-code/lex.yy.o
	gcc lexyacc-code/y.tab.o lexyacc-code/lex.yy.o lexyacc-code/calc3i.c -o bin/calc3i.exe

clean:
	rm lexyacc-code/y.tab.h lexyacc-code/y.tab.c lexyacc-code/lex.yy.c lexyacc-code/y.tab.o lexyacc-code/lex.yy.o bin/calc3i.exe