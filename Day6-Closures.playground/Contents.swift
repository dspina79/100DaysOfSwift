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

let square = { (x: Int) -> Int in
    return x * x
}

let reverseSign = { (x: Int) -> Int in
    return x * -1
}

let squareResult = singleMathOpp(x: 5, operation: square)
print(squareResult) // 25
let reverseSignResult = singleMathOpp(x: -3, operation: reverseSign)
print(reverseSignResult) // 3


// more trailing closures with parameters
func travel(destination: (String) -> Void) {
    print("I am traveling")
    destination("Spain")
    print("I may like it there")
}

travel { (place: String)  in
    print("Destination: \(place)")
}
/*
 prints:
 I am traveling
 Destination: Spain
 I may like it there
 */


// combining closures with functions having parameters
func goSomeWhere(finalDestination: String, method: (String) -> Void) {
    print("I am going to \(finalDestination)")
    method(finalDestination)
    print("And now I'm there...")
}

goSomeWhere(finalDestination: "New Jersey") { (place: String) in
    print("I am going to \(place) by means of car.")
}
/*
 prints:
 I am going to New Jersey
 I am going to New Jersey by means of car.
 And now I'm there...
 */


// Trailing Closure with Return Value
func mather(action: (Int, Int) -> Int) {
    print("About to run a method")
    let result = action(5, 4)
    print("The result is \(result)")
}

mather { (x: Int, y: Int) -> Int in
    return x + y
}
/*
 prints:
 About to run a method
 The result is 9
 */


func mather2(x: Int, y: Int, action: (Int, Int) -> Int) -> Int {
    return action(x, y)
}

let mather2Result1 = mather2(x: 4, y: 5) { (x: Int, y: Int) in
    return x * y
}


let mather2Result2 = mather2(x: 4, y: 5) { (x: Int, y: Int) in
    return x - y
}

print(mather2Result1) // prints 20
print(mather2Result2) // prints -1


// Shortand Parameters
func moveX(action: (Int) -> Int) {
    print("About to move 9")
    let result = action(9)
    print("The result is \(result)")
}

moveX { amt in
    amt + 2
}

/*
 prints:
 About to move 9
 The result is 11
 */

moveX {
    $0 + 3
}
/*
 prints:
 About to move 9
 The result is 12
 */


// Multiple Parameter Names
func describePerson(name: String, age: Int, handler: (String, Int) -> String) {
    print("\(name) has entered the room.")
    let result = handler(name, age)
    print("The say, \(result)")
}

describePerson(name: "Dean", age: 25) {
    "\($0) is \($1) years old"
}
/*
 prints:
 Dean has entered the room.
 The say, Dean is 25 years old
 */
