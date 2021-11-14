import UIKit

// Properties and Setting

struct Profession {
    var name: String
    var annualSalary: Double {
        willSet {
            print("About to change the annual salary to \(newValue)")
        }
        
        didSet {
            print("The salaray has been changed to \(annualSalary)")
        }
    }
}

var programmer = Profession(name: "Programmer", annualSalary: 75000)
print(programmer.annualSalary)
programmer.annualSalary = 80000

/*
 prints:
 75000.0
 About to change the annual salary to 80000.0
 The salaray has been changed to 80000.0
 */

// Static Properties and Methods
class Student {
    static var numberOfStudents = 0
    var firstName: String
    var lastName: String
    var major: String
    
    init(firstName: String, lastName: String, major: String) {
        self.major = major
        self.firstName = firstName
        self.lastName = lastName
        Student.numberOfStudents += 1
    }
    
    static func printStudentBody() {
        print("There are \(Student.numberOfStudents) students in the school.")
    }
}

let bianca = Student(firstName: "Bianca", lastName: "Derry", major: "Physics")
let cheryl = Student(firstName: "Cheryl", lastName: "Motti", major: "Economics")
Student.printStudentBody() // prints There are 2 students in the school


// Access Control

class Professor {
    private var firstName: String
    private var lastName: String
    private var concentrations: [String] = [String]()
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func addConcentration(_ concentration: String) {
        self.concentrations.append(concentration)
    }
    
    func getConcentrations() -> [String] {
        return self.concentrations
    }
}

let drlarry = Professor(firstName: "Larry", lastName: "Oldonson")
drlarry.addConcentration("Biology")
drlarry.addConcentration("Physics")
print(drlarry.getConcentrations().count) // prints 2
