import UIKit

// Optionals

// Simple declaration of an optional
var age: Int? = nil
var middleName: String?

age = 30

print(age) // prints 30
print(middleName) // prints nil

// Unwrapping an optional
if let mname = middleName {
    print("The person's middle name is \(mname)")
} else {
    print("No middle name was supplied.")
}
// prints No middle name was supplied.

// Optionals in a Struct

struct MaybePerson {
    var firstName: String?
    var lastName: String?
    var age: Int = 0
}

var bobby = MaybePerson()
bobby.firstName = "Robert"
bobby.lastName = "Robertson"
print(bobby.firstName!) // unwraps explicitly

// Using guard let to unwrap initially
func greet(_ name: String?) {
    guard let personName = name else {
        print("Hello, nobody")
        return
    }
    
    print("Hello, \(personName)")
}

greet(nil) // prints Hello, nobody
greet("Brian") // prints Hello, Brian

let noone: String? = nil
greet(noone) // prints Hello, nobody

let reallySomthing: String? = "Bread"
print(reallySomthing!) // force unwraps

// Implictly Unwrapped Optionals
var churchLocation: String! = nil
// no need for guard let
churchLocation = "Bridgewater, CT"
print(churchLocation)


// Nil Coallessing
var grainWeight: Int?
var minimalWeight: Int = grainWeight ?? 100 // 100
grainWeight = 39
minimalWeight = grainWeight ?? 100 // 39

func newGreeting(name: String?) -> String {
    return "Hello, " + (name ?? "Someone")
}

var name1: String?
var name2: String? = "Dean"
print(newGreeting(name: name1)) // prints Hello, Someone
print(newGreeting(name: name2)) // prints Hello, Dean

