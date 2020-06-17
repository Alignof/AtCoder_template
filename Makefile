CPP	 := g++
CPPFLAGS := -Wall

% :%.cpp
	g++ -o output $<
	@for case in `ls ./testcase/$@/* | grep -E "case[1-9]$$" | xargs -I{} basename "{}"`; do\
		echo "------------\e[42;37minput\e[m---------------" ;\
		cat ./testcase/$@/$$case ;\
		cat ./testcase/$@/$$case | ./output > tmp;\
		echo "------------\e[41;37moutput\e[m---------------" ;\
		cat ./tmp ;\
		diff -q tmp ./testcase/$@/$$case-ans > /dev/null ;\
		if [ $$? -eq 0 ]; then\
			echo ">>>\e[42;30mOK.\e[m" ;\
		else\
			echo "------------\e[43;30mexpext\e[m---------------" ;\
			cat ./testcase/$@/$$case-ans ;\
			echo ">>>\e[41;30merror.\e[m" ;\
		fi;\
	done;\
	rm -f tmp

debug_%:%.cpp
	g++ -o output $<
	./output

.PHONY : A.cpp B.cpp C.cpp D.cpp E.cpp F.cpp

