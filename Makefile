all: hexasci2utf.cpp utf2hexasci.cpp genvocab.cpp
	$(CXX) hexasci2utf.cpp -O2 -o hexasci2utf
	$(CXX) utf2hexasci.cpp -O2 -o utf2hexasci
	$(CXX) genvocab.cpp -O2 -o genvocab
