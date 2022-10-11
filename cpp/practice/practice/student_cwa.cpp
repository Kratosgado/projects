#include <iostream>
#include <vector>
#include <map>
#include <fstream>

using namespace std;

//define the Exams class
class Exams
{
public:
	//functions to be used outside the class
	Exams(string name);
	void setMarks(int level, int numOfCourses);
	double getWA(int level);
	double getCWA();
	void showResults();
	void saveResults();
	void loadResults();

private:
	string name;
	//funtions and variables only available to the class
	void setCourses(int numOfCourses);
	vector<string> courses;
	map<string, vector<double>> courses_marks;
	map <int, map<string, vector<double>>> results;
};

Exams::Exams(string name) {	
}
void Exams::setCourses(int numOfCourses) {
	for (int course = 1; course <= numOfCourses; course++) {
		string name;
		cout << "Enter the name of course " << course << ": ";
		cin >> name;
		courses.push_back(name);
	}
}

//create setMarks function to recieve the marks for the semester
void Exams::setMarks(int level, int numOfCourses) {
	bool isSet = false;
	//loop through submitted results and check if the particular level has already been set
	//if true, change isSet = true
	for (auto levels : results) {
		if (level == levels.first) {
			isSet = true;
			cout << "Sorry, the marks have already been set." << endl;
		}
	}
	//if not, call the setCourses() function to set the name of the courses for the
	//semester and enter their marks too
	if (!isSet) {
		cout << "wait, let's set the name of the courses first!" << endl;
		//call the setCourses() function
		setCourses(numOfCourses);
		system("pause");
		cout << "Now let's set the marks and the credit hours for each course." << endl;
		for (int course = 0; course < numOfCourses; course++) {
			vector<double> mark_hours;
			double mark;
			cout << "Enter the marks for " << courses[course] << " : ";
			cin >> mark;
			mark_hours.push_back(mark);
			double hours;
			cout << "Enter the credit hours for " << courses[course] << " : ";
			cin >> hours;
			courses_marks[courses[course]] = mark_hours;
		}
	}
	results[level] = courses_marks;
}
//function to get the weighted average for a level
double Exams::getWA(int level) {
	double sum = 0;
	double total_credit_hours = 0;
	
	for (auto levels : results) {
		if (level == levels.first) {
			for (auto course : levels.second) {
				sum += course.second[0] * course.second[1];
				total_credit_hours += course.second[1];
			}
		}
	}
	return sum / total_credit_hours;
}
//function to get the cummulated weighted average for the submitted semesters
double Exams::getCWA() {
	double sum = 0;
	double total_average = 0;
	for (auto level : results) {
		sum += getWA(level.first);
		total_average++;
	}
	return sum / total_average;
}
//function to display the all the results to the screen
void Exams::showResults() {
	cout << "Level = level + semester number" << endl;
	for (auto level : results){
		cout << "Level: " << level.first << endl;
		cout << "\tCourse\t\tMarks" << endl;
		for (auto course : level.second) {
			cout << "\t" << course.first << "\t\t" << course.second[0]<<endl;
		}
	}
}
//function to save results to a .json file
void Exams::saveResults() {
	cout << "saving file..." << endl;
	ofstream file;
	string filename = name + ".txt";
	file.open(filename);
	for (auto level : results) {
		file << level.first << " : " << endl;
		for (auto course : level.second) {
			file << course.first << " : " << course.second[0] << course.second[1] << endl;
		}
	}
	cout << "file saved";

}
void Exams::loadResults() {
	cout << "loading file..." << endl;
	ifstream file;
	string filename = name + ".txt";
	file.open(filename);

}
//function to load results from a .json file
int main() {
	Exams prince("Prince");
	prince.setMarks(100, 2);
}