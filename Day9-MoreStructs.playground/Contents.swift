import UIKit

// More Structs
struct Fairy {
    var name: String
    var wingSpan: Int
    var hasWings: Bool {
        return wingSpan > 0
    }
}

var tinkerbell = Fairy(name: "Tinkerbell", wingSpan: 2)
print("Does \(tinkerbell.name) have wings? \(tinkerbell.hasWings)")
// prints Does Tinkerbell have wings? true

// Using Initializers
struct Rectangle {
    var width: Int
    var height: Int
    var internalColor: String
    var area: Int {
        return width * height
    }
    
    init(height: Int, width: Int) {
        self.width = width
        self.height = height
        internalColor = "Transparent"
    }
}

var rect = Rectangle(height: 4, width: 5)
rect.internalColor = "red"
print(rect.area) // prints 20

// Lazy Properties
// they will only be instantiated when needed

struct Degree {
    var level: String
    var discipline: String
    
    init() {
        level = ""
        discipline = ""
        print("Initialized degree.")
    }
}

struct Graduate {
    var name: String
    var graduationYear: Int
    lazy var degree = Degree()
    
    init(name: String, gradYear: Int) {
        self.name = name
        self.graduationYear = gradYear
        print("End of graduate initialization")
    }
}

var tina = Graduate(name: "Tina", gradYear: 2022)
print("Initialized the 'tina' variable.")
tina.degree.level = "BS"
/*
 prints:
 End of graduate initialization
 Initialized the 'tina' variable.
 Initialized degree.
 */

// Static Variables and Methods

struct Volunteer {
    static var count: Int = 0
    var name: String
    var group: String
    
    init(name: String, group: String) {
        self.name = name
        self.group = group
        Volunteer.count += 1
    }
    
    static func workTogether(vol1: Volunteer, vol2: Volunteer) {
        print("\(vol1.name) and \(vol2.name) are working together.")
    }
}

var brad = Volunteer(name: "Brad", group: "recycling")
var emma = Volunteer(name: "Emma", group: "conservation")
print(Volunteer.count) // prints 2
Volunteer.workTogether(vol1: brad, vol2: emma) // prints Brad and Emma are working together.
