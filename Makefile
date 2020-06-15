CPP	 := g++
CPPFLAGS := -Wall

% :%.cpp
	g++ -o output $<
	@for case in `ls ./testcase/$@/* | grep -E "case[1-9]$$" | xargs -I{} basename "{}"`; do\
		echo "------------\e[32minput\e[m---------------" ;\
		cat ./testcase/$@/$$case ;\
		cat ./testcase/$@/$$case | ./output > tmp;\
		echo "------------\e[31moutput\e[m---------------" ;\
		cat ./tmp ;\
		diff -q tmp ./testcase/$@/$$case-ans > /dev/null ;\
		if [ $$? -eq 0 ]; then\
			echo ">>>\e[42;30mOK.\e[m" ;\
		else\
			echo ">>>\e[41;30merror.\e[m" ;\
		fi;\
	done;\
	rm -f tmp

A.cpp :
	g++ -o output A.cpp

B.cpp :
	g++ -o output B.cpp

C.cpp :
	g++ -o output C.cpp

D.cpp :
	g++ -o output D.cpp

E.cpp :
	g++ -o output E.cpp

F.cpp :
	g++ -o output F.cpp


.PHONY : A.cpp B.cpp C.cpp D.cpp E.cpp F.cpp

