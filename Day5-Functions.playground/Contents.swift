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
