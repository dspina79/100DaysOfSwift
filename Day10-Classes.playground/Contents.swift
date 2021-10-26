import UIKit

// Classes
// classes are like structs with several differences
// including no memberwise initializers

class Fish {
    var name: String
    var bonyFish: Bool = true
    var species: String
    
    init(name: String, species: String) {
        self.name = name
        self.species = species
    }
}

let nemo = Fish(name: "Nemo", species: "Clown Fish")
print(nemo.bonyFish) // prints true


// Inheritance or Subclassing
class Goldfish : Fish {
    init(name: String) {
        super.init(name: name, species: "Goldfish")
    }
}

let moby = Goldfish(name: "Moby")
print(moby.species) // prints Goldfish

// Override Methods
class Shape {
    var side1: Int
    var side2: Int
    var side3: Int
    
    init(side1: Int, side2: Int, side3: Int) {
        self.side1 = side1
        self.side2 = side2
        self.side3 = side3
    }
    
    func getPerimiter() -> Int {
        return side1 + side2 + side3
    }
}

class Triangle: Shape {
    
}

class Square: Shape {
    var side4: Int
    init(side: Int) {
        self.side4 = side
        super.init(side1: side, side2: side, side3: side)
    }
    
    override func getPerimiter() -> Int {
        return side4 * 4
    }
}


let triangle = Triangle(side1: 3, side2: 5, side3: 4)
let square = Square(side: 7)
print(triangle.getPerimiter()) // prints 12
print(square.getPerimiter()) // prints 28

// Locking Classes from Inheritance with the Final Keyword

class Bird {
    var name: String
    var species: String
    var flightless: Bool = false
    
    init(name: String, species: String) {
        self.name = name
        self.species = species
    }
}

// the Penguin class cannot be inherited
final class Penguin: Bird {
    init(name: String) {
        super.init(name: name, species: "Penguin")
        self.flightless = true
    }
}

let chilly_willy = Penguin(name: "Chilly Willy")
print(chilly_willy.flightless) // prints true

// Copying Objects
class Director {
    var name: String
    var numberMoviesDirected: Int = 0
    var numberOfAcademyAwards: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func printDirectorInfo() {
        print("\(self.name) - Moves: \(self.numberMoviesDirected); Awards: \(self.numberOfAcademyAwards)")
    }
}

let lee = Director(name: "Dustin Lee")
lee.numberMoviesDirected = 4
lee.numberOfAcademyAwards = 1
lee.printDirectorInfo() // prints Dustin Lee - Moves: 4; Awards: 1

let leeCopy = lee // made a reference copy
leeCopy.numberMoviesDirected += 1
leeCopy.numberOfAcademyAwards += 1
lee.printDirectorInfo() // prints "Dustin Lee - Moves: 5; Awards: 2" even though this is the original reference

// Deinitializers -
// called when the object is destroyed or no longer needed
class Dinosaur {
    var name: String
    var type: String
    
    init(name: String, type: String) {
        self.name = name
        self.type = type
    }
    
    func roar() {
        print("\(self.name), a \(self.type), roars!")
    }
    
    deinit {
        print("\(self.name) has been destroyed.")
    }
}
for _ in 1...3 {
    let barney = Dinosaur(name: "Barney", type: "T-Rex")
    barney.roar()
    print("After dino is used...")
}
/*
 prints:
 Barney, a T-Rex, roars!
 After dino is used...
 Barney has been destroyed.
 Barney, a T-Rex, roars!
 After dino is used...
 Barney has been destroyed.
 Barney, a T-Rex, roars!
 After dino is used...
 Barney has been destroyed.
 */


// Mutability in Classes
class Person {
    var firstName: String
    var lastName: String
    let birthdate: String // a constant that can't be changed
    
    init(firstName first: String, lastName last: String, dob: String) {
        self.firstName = first
        self.lastName = last
        self.birthdate = dob
    }
    
    func changeName(newFirstName: String, newLastName: String) {
        // no mutating keyword needed
        self.firstName = newFirstName
        self.lastName = newLastName
    }
}

let bob = Person(firstName: "Robert", lastName: "Williams", dob: "09/24/1980")
bob.changeName(newFirstName: "Bobby", newLastName: "Williams")
print(bob.firstName) // prints Bobby

enum Department {
    case InformationTechnology
    case HumanResources
    case ExecutiveTeam
    case Accounting
    case Marketing
    case Sales
    case Other
}

class Employee {
    private static var EmployeeId: Int = 100
    private var employeeId: Int
    private var firstName: String
    private var lastName: String
    private var department: Department
    private var manager: Manager? = nil
    
    init(firstName: String, lastName: String, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.department = department
        self.employeeId = Employee.EmployeeId
        Employee.EmployeeId += 1
    }
    
    func setManager(mgr: Manager?) {
        self.manager = mgr
    }
    
    func getDetails() -> String {
        if let managerDetails = self.manager?.getDetails() {
            return "\(self.lastName), \(self.firstName)... Manager \(managerDetails)"
        } else {
            return "\(self.lastName), \(self.firstName)... Manager Unknown"
        }
    }

}

class Manager: Employee {
    
}

var sharon = Manager(firstName: "Sharon", lastName: "Billings", department: Department.InformationTechnology)
var thomas = Employee(firstName: "Thomas", lastName: "Birez", department: Department.InformationTechnology)
thomas.setManager(mgr: sharon)
print(thomas.getDetails())
