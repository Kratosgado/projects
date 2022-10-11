#include <iostream>
#include <map>
#include <string>
#include <vector>

using namespace std;

struct academic_info {
	int index, reference_number;
	string college, faculty, department;
	int level;
};
struct residential_info {
	bool ishostel;
	string name;
	int floor, room_number;
};
struct personal_info {
	string name, hometown; long int contact;
	vector<string> fav_friends, hobbies;
	map<string, long int>friends_contacts;
};

class Student {
public:
	personal_info person_info;

	//functions
	Student() {
		setPersonal_info();
	};
	void setPersonal_info();
};
//function to collect personal info
void Student::setPersonal_info() {
	cout << "we are about setting you data" << endl;
	cout << "Let's start with your personal info\n\n" << endl;
	cout << "what's your name: ";
	getline(cin, person_info.name);
	cout << "hometown: ";
	getline(cin, person_info.hometown);
	cout << "contact: ";
	cin >> person_info.contact;
	int friends;
	cout << "Okay, so now let's talk about your favourite friends\n How many are they: ";
	cin >> friends;
	cin.ignore();
	for (int frnd = 0; frnd < friends; frnd++) {
		string frien;
		cout << "Enter the friend's name: ";
		getline(cin, frien);
		person_info.fav_friends.push_back(frien);
		cout << frien << " added to fav_friends list." << endl;
	}
	for (auto frnd : person_info.fav_friends) {
		long int contact;
		cout << "Enter " << frnd << "'s number: ";
		cin >> contact;
		person_info.friends_contacts[frnd] = contact;
		cin.ignore();
	}
	char add;
	while (true) {
		cout << "Add a hobby? (y/n): ";
		cin.get(add);
		cin.ignore();
		if (add == 'y') {
			string hobby;
			cout << "Enter your hobby: ";
			getline(cin, hobby);
			person_info.hobbies.push_back(hobby);
			cout << hobby << " added to hobbies list." << endl;
		}
		else {
			break;
		}
	}

	bool verified = true;
	if (verified) {
		cout << "we are done setting your personal info." << endl;
	}
	else {
		cout << "There was a problem in setting your personal info. We are setting it again" << endl;
		setPersonal_info();
	}
}
//function to verify information recieved

int main()
{
	Student Prince;
}
