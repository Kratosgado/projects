import os
import json

class Exams:
    results = {}
    courses_marks= {}
    courses = []
    
    def __init__(self, name):
        self.name = name
        self.loadResults()

#function to ask user for names of courses 
    def setCourses(self, num_of_courses):
        for course in range(num_of_courses):
            self.courses.append(input(f"Enter the name of course {course+1}: "))
#function to ask user for marks of courses
    def setMarks(self, level, num_of_courses):
        isSet = False
        if level in self.results:
            isSet = True
            print("sorry, the marks for the semester have already been set.")
        if not isSet:
            print("let's first set the courses for the semester")
            self.setCourses(num_of_courses)
            course = 0
            for _ in self.courses:
                mark_hours = []
                mark_hours.append(float(input(f"Enter marks for {self.courses[course]}: ")))
                mark_hours.append(int(input(f"Enter the credit hours for {self.courses[course]}: ")))
                self.courses_marks[self.courses[course]] = mark_hours
                course += 1
            self.results[level] = self.courses_marks
#function to display scores for a particular level
    def getScores(self, level):
        print(" Course \t\t Mark")
        for lev, courses in self.results.items():
            if int(lev) == level:
                for course, mark in courses.items():
                    print(f" {course} \t\t {mark[0]}")

#function that returns the weighted average of the student in a particular level
    def getWA(self, level):
        sum = 0
        total_credit_hours = 0
        for lev, courses in self.results.items():
            if int(lev) == level:
                for course, mark in courses.items():
                    credit_hours = mark[1]
                    sum += mark[0] * credit_hours
                    total_credit_hours += credit_hours
        average = sum/total_credit_hours
        return average

#function that returns the cummulated weighted average of the student's submitted semesters
    def getCWA(self):
        sum = 0
        total_average = 0
        for level in self.results:
            sum += self.getWA(int(level))
            total_average += 1
        return sum/total_average
            
#function to print all the results of the students to the screen
    def showResult(self):
        for level, scores in self.results.items():
            print("Level = level + semester number")
            print(f"Level: {level}:\n Course \t\t Mark")
            for course, mark in scores.items():
                print(f" {course} \t\t {mark[0]}")

#function to save results in a .txt file according to the student's name
    def saveResults(self):
        print("saving file...")
        with open(f"{self.name}.json", "w") as file:
            json.dump(self.results, file, indent = 6)
        print(f"{self.name}.json saved succussfully...")

#funtion to load results in a .txt file according to the student's name
    def loadResults(self):
        print("loading file...")
        if os.path.exists(f"{self.name}.json"):
            with open(f"{self.name}.json") as file:
                self.results = json.load(file)
            print(f"{self.name}.json loaded successfully...")
        else:
            print(f"Sorry, there's no such file with the name {self.name}.json in the directory")

#main function that will be called automatically when the program is run
def main():
    name = input("Student's name: ")
    #create an object instance of the class Student
    student = Exams(name)
    print(f"{name}'s File")
    #commands
    exit, set_marks, get_scores, get_wa, get_cwa, show_results, save_results, load_results=0,1,2,3,4,5,6,7
    #set a forever running loop until break is encoutered
    while True: 
        print("input command:\n 1. Set marks\n 2. Get scores\n 3. Get wa\n 4. Get CWA \n 5. Show results\n 6. Save results\n 7. Load results\n 0. Exit")
        cmd = int(input("Enter command number: "))
        
        if cmd == set_marks or cmd == get_scores or cmd == get_wa:
            year = int(input("Level: "))
            sem = int(input("Semester: "))
            level = sem + year
            if cmd == set_marks:
                num_of_courses = int(input("Number of courses in that semester: "))
                student.setMarks(level, num_of_courses)
            if cmd == get_scores:
                student.getScores(level)
            if cmd == get_wa:
                print(student.getWA(level))
        
        if cmd == get_cwa:
            print(student.getCWA())

        if cmd == show_results:
            student.showResult()

        if cmd == save_results:
            student.saveResults()

        if cmd == load_results:
            student.loadResults()
        if cmd == exit:
            break

if __name__ == "__main__":
    main()