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


// Changing Parameter Values with inout
// similar to pass by reference

func doubleNum(num: inout Int) {
    num *= 2
}

// use ampersand (&) to identify the passed by refernece variable
var refNum = 39
doubleNum(num: &refNum)
print("The double is \(refNum)") // prints The double is 78
// let's do it again
doubleNum(num: &refNum)
print("The double is \(refNum)") // prints The double is 156


// lets put things together
enum SumError: Error {
    case negativeNumberFound
}

func sumNumbers(nums: Int..., sumRegister: inout Int) throws {
    for num in nums {
        if num < 0 {
            throw SumError.negativeNumberFound
        } else {
            sumRegister += num
        }
    }
}

var register = 0
do {
    try sumNumbers(nums: 5, 4, 10, 29, 1, 2, sumRegister: &register)
    print("The sum is \(register)")
    register = 0
    try sumNumbers(nums: 5, 4, 10, -29, 1, 2, sumRegister: &register)
    print("The sum is \(register)")
    
} catch {
    print("An error occurred.")
}
/*
 prints:
 The sum is 51
 An error occurred.
 */


// Trailing Closure Syntax
// if the last parameter is a closure, the syntax is easier to write

func runErrand(errand: () -> Void) {
    print("I'm running errands...")
    errand()
    print("And now I'm done")
}

runErrand {
    print("Buying the groceries.")
}
/*
 prints:
 I'm running errands...
 Buying the groceries.
 And now I'm done
 */


// it's optional but you can add parens
runErrand() {
    print("Taking the cat to the vet")
}
/*
 prints:
 I'm running errands...
 Taking the cat to the vet
 And now I'm done
 */

func singleMathOpp(x: Int, operation: (Int) -> Int) -> Int {
    return operation(x)
}

let square = { (x: Int, y: Int) -> Int in
    return x * x
}

let reverseSign = { (x: Int) -> Int in
    return x * -1
}

let squareResult = singleMathOpp(x: 5, operation: square)
print(squareResult) // 25
let reverseSignResult = singleMathOpp(x: -3, operation: reverseSign)
print(reverseSignResult) // 3
