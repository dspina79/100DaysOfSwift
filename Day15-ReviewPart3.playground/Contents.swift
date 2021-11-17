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

// Typecasting and Polymorphism
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func describe() -> String {
        return "A regular LP: \(self.name)"
    }
}

class StudioAlbum: Album {
    var studioName: String
    
    init(name: String, studio: String) {
        self.studioName = studio
        super.init(name: name)
    }
    override func describe() -> String {
        return "A classy studio album: \(self.name)"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func describe() -> String {
        return "Music LIVE: \(self.name)"
    }
}

var nightAtOpera = StudioAlbum(name: "A Night at the Opera", studio: "Apple Records")
var wembley85 = LiveAlbum(name: "Queen: Live at Wembley 85", location: "Wembley Stadium")

var albums: [Album] = [nightAtOpera, wembley85]

for album in albums {
    print(album.name)
    print(album.describe())
}

/*
 prints:
 A Night at the Opera
 A classy studio album: A Night at the Opera
 Queen: Live at Wembley 85
 Music LIVE: Queen: Live at Wembley 85
 */

for al in albums {
    if let studio = al as? StudioAlbum {
        print("\(studio.name) as a Studio album")
    } else {
        print("It's something else")
    }
}

/*
 prints:
 A Night at the Opera as a Studio album
 It's something else
 */

// Closures

func runClosure(name: String, action: (String) -> Void) {
    print("The name is \(name)")
    print("Running closure now")
    action(name)
    print("Ran closure")
}

runClosure(name: "Bingo") { name in
    print("Closure running \(name)")
}

/*
 prints:
 The name is Bingo
 Running closure now
 Closure running Bingo
 Ran closure
 */

let vw = UIView()
UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})


