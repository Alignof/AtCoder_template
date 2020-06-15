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
