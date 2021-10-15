import UIKit

// Functions - Basics
func sayHelloWorld() {
    print("Hello, world!")
}

sayHelloWorld() // prints Hello, world!

// Functions with Parameters
func add(x: Int, y: Int) {
    let sum = x + y
    print("The sum of \(x) and \(y) is \(sum)")
}

add(x: 5, y: 7) // prints The sum of 5 and 7 is 12

// Functions Returning Values
func square(x: Int) -> Int {
    return x * x
}

let squareVal = square(x: 7)
print(squareVal) // prints 49


// Parameter Labels
func calcDistance(from x1: Int, to x2: Int) -> Int {
    return abs(x2 - x1)
}

let dist = calcDistance(from: 5, to: 19)
print("The distance is \(dist)") // prints 14

// Omitting Paramter Labels
func multiply(_ x: Int, _ y: Int) -> Int {
    return x * y
}

let prodResult = multiply(5, 3)
print(prodResult) // prints 15s

// Default Parameters
func sayHello(to person: String, greet: String = "Hello") -> String {
    return "\(greet), \(person)"
}

print(sayHello(to: "Dean")) // prints "Hello, Dean"
print(sayHello(to: "Dean", greet: "Allo")) // prints "Allo, Dean"

// Variadic Functions
// functions that accept any number of variables of the same type

func sumNumbers(nums: Int...) -> Int {
    var total: Int = 0
    for num in nums {
        total += num
    }
    
    return total
}

let testSum = sumNumbers(nums: 1, 3, 5, 7, 9)
print("The sum is \(testSum)") // prints "The sum is 25"

func writeNames(_ names: String...) {
    for name in names {
        print("\(name)")
    }
}

writeNames("Lou", "Linda", "Leslie", "Lana", "Lois")
/*
 prints:
 Lou
 Linda
 Leslie
 Lana
 Lois
 
 */


// Throwing Exceptions
enum MyMathError: Error {
    case divideByZero
}
func divide(x: Int, y: Int) throws -> Int {
    if y == 0 {
        throw MyMathError.divideByZero
    }
    
    return x / y
}

let quot1 = try? divide(x: 10, y: 2) // 5

// Catching Errors
do {
    let quot2 = try divide(x: 10, y: 0)
    print("The quotient is \(quot2)")
} catch {
    print("There was an error!")
}
// prints There was an error!

enum LoginError: Error {
    case invalidUsername
    case invalidPassword
}
func authenticate(username: String, password: String) throws {
    if username != "superuser" {
        throw LoginError.invalidUsername
    } else if password != "p@ssword123" {
        throw LoginError.invalidPassword
    }
    print("You're IN!")
}

do {
    try authenticate(username: "superuser", password: "blah")
} catch {
    print("Authentication Error")
}
// prints Authentication Error

