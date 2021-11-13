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
