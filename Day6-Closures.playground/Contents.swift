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


// Closures as parameters
let dogBarking = {
    print("The dog is barking...")
}
let catMeowing = {
    print("The kitty is meowing...")
}

func animalSpeak(action: () -> Void) {
    print("Shhh... I hear something.")
    action()
    print("Ah, the sound of nature!")
}


animalSpeak(action: dogBarking)
/*
 prints:
 Shhh... I hear something.
 The dog is barking...
 Ah, the sound of nature!
 */

animalSpeak(action: catMeowing)
/*
 prints:
 Shhh... I hear something.
 The kitty is meowing...
 Ah, the sound of nature!
 */


let addIt = { (x: Int, y: Int) -> Int in
    return x + y
}

let multIt = { (x: Int, y: Int) -> Int in
    return x * y
}

func performMath(x: Int, y: Int, mathFunc: (Int, Int) -> Int) {
    print("Running a math problem with \(x) and \(y)")
    let result = mathFunc(x, y)
    print("And the result is \(result)")
}

performMath(x: 6, y: 5, mathFunc: addIt)
/*
 prints:
 Running a math problem with 6 and 5
 And the result is 11
 */
performMath(x: 6, y: 5, mathFunc: multIt)
/*
 prints:
 Running a math problem with 6 and 5
 And the result is 30
 */

