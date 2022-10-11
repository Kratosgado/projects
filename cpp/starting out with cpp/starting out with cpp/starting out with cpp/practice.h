#include <iostream>
#ifndef PRACTICE_H
#define PRACTICE_H

using namespace std;

class practice {
private:
	string name;
public:
	void message();
	int number;
	~practice() {
		cout << "destroyed";
	};
};
#endif // !PRACTICE_H
