#include "Product.h"
#include <iostream>
#include <fstream>
#include <map>

using namespace std;

ofstream& operator<<(ofstream &strm, map<int, string>& obj) {
	for (auto member : obj) {
		strm << member.first << " : " << member.second << endl;
	}
	return strm;
}
ifstream& operator>>(ifstream& strm, map<int, string>& obj) {
	for (auto member : obj) {
		
	}
}
ostream& operator<<(ostream& strm, map<int, string> &obj) {
	for (auto member : obj) {
		strm << member.first << " : " << member.second << endl;
	}
	return strm;
}

int main() {
	
	map<int, string> results = {
		{1, "hello"}, {2, "hi"},
	};
	ofstream file;
	file.open("result.txt");
	file << results;
	file.close();
	Product apple;
	Product banana("banana");

	apple = "apple";
	apple = 5;
	apple.setPrice(6.00);
	cout << results << endl;
}