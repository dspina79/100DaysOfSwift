import UIKit

// Closures - Using Functions as Types

// simple closure

let helloWorld = {
    print("Hello world")
}

helloWorld() // prints Hello World

// Closures with Parameters
let greet = { (name: String) in
    print("Hello, \(name)")
}

// field declarations are not needed
greet("Dean") // prints Hello, Dean

let sum = {(x: Int, y: Int) -> Int in
    return x + y
}

let mySum = sum(3, 4) // 7
print(mySum) // prints 7

