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
