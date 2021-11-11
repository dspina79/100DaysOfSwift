import UIKit

// Swift Review Part 2

// Functions

func triple(x: Int) -> Int {
    return x * 3
}

print(triple(x: 10)) // prints 30

func greeting(_ to: String) {
    print("Hello, \(to)")
}

greeting("Linda") // prints Hello, Linda

func add(_ x: Int, _ y: Int) -> Int {
    return x + y
}

print(add(3, 10)) // prints 13
print(add(239, 882)) // prints 1121


// Optionals
var triangleArea: Int? = nil
triangleArea = 3
// no declared unwrapping
print(triangleArea) // prints Optional(3)

// explicit unwrapping
print(triangleArea!) // prints 3

func greetOptional(_ to: String?) -> String? {
    guard let to = to else {
        return nil
    }
    
    return "Hello, \(to)"
}

print(greetOptional("Dean")) // prints Optional("Hello, Dean")
print(greetOptional(nil)) // prints nil

if let myGreeting = greetOptional("John") {
    print(myGreeting)
} else {
    print("Hello, X")
} // prints Hello, John

func brutePower(base: Int, power: Int?) -> Int {
    guard let power = power else {
        return base
    }
    
    var vBase = base  // net a mutating variable
    for _ in 1..<power {
        vBase *= base
    }
    
    return vBase
}

print(brutePower(base: 10, power: nil)) // prints 10
print(brutePower(base: 10, power: 4)) // prints 10000
print(brutePower(base: 2, power: 8)) // prints 256
print(brutePower(base: 2, power: nil)) // prints 2

// Optional Chaining and Nil Coellessing
let optionalString: String? = "Tapioca"
let optionalString2: String? = nil

let count = optionalString?.count ?? 0
let count2 = optionalString2?.count ?? 0

print(count) // prints 7
print(count2) // prints 0

// Enumerations
enum Season {
    case FALL
    case WINTER
    case SPRING
    case SUMMER
}

let currentSeason = Season.FALL

switch currentSeason {
case .FALL: print("Leaves falling")
case .SPRING: print("Blossoms blooming")
case .SUMMER: print("Hot hot hot")
case .WINTER: print("Snow and cold")
}
// prints Leaves falling

enum Grades {
    case A, B, C, D, F
}

let myGrade = Grades.B

enum WeatherType {
    case Sunny
    case Raining(precipitation: Int)
    case Snowing(accumulation: Int)
    case Windy(speed: Int)
    case Cloudy
}

let currentWeather = WeatherType.Raining(precipitation: 1)
switch currentWeather {
case .Windy(let speed): print("It's windy with a speed of \(speed)")
case .Raining(let amt): print("It's raning with an accumulation of \(amt) inches")
case .Snowing(let amt): print("It's snowing with an accumulation of \(amt) inches")
case .Cloudy: print("It's cloudy!")
case .Sunny: print("Sun's out!")
}
// prints It's raning with an accumulation of 1 inches

switch currentWeather {
case .Raining(let amt) where amt > 3: print("A flood is coming")
case .Raining(let amt) where amt >= 1: print("Flood watch")
default: print("No worry for floods!")
}
// prints Flood Watch


// Struts
struct TeamMember {
    var firstName: String
    var lastName: String
    var team: String
    var level: Int = 1
    
    mutating func increaseLevel() {
        self.level += 1
    }
}

var tim = TeamMember(firstName: "Tim", lastName: "Lewis", team: "Alpha", level: 3)

// copying (not making reference copies)
var timCopy = tim
timCopy.increaseLevel()
timCopy.team = "Beta"

print(tim)
print(timCopy)

/*
 prints:
 
 TeamMember(firstName: "Tim", lastName: "Lewis", team: "Alpha", level: 3)
 TeamMember(firstName: "Tim", lastName: "Lewis", team: "Beta", level: 4)
 */

// Classes
class Human {
    var firstName: String = ""
    var lastName: String = ""
    var fullName: String {
        self.firstName + " " + self.lastName
    }
    private var age: Int
    private var numberBirthdays: Int = 0
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    func birthday() {
        self.age += 1
        self.numberBirthdays += 1
    }
    
    func describe() -> String {
        return "\(self.fullName) is \(age) years old and has celebrated \(numberBirthdays) birthdays with us."
    }
}

var steve = Human(firstName: "Steve", lastName: "Lewis", age: 32)

for _ in 1...3 {
    steve.birthday()
}
print(steve.describe())
// ^^ prints Steve Lewis is 35 years old and has celebrated 3 birthdays with us.


