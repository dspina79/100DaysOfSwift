import UIKit

// Variables and Constants
var myVariable: Int = 1
let myConstant: Int = 2

myVariable += 1
//myConstant += 1 //ilegal

// Types of Data
let myName: String = "John Lennon"
let myAge: Int = 48
let latitude: Float = 32.93901
let myHourlyWage: Double = 25.39
// Apple recommends using Double over Float
let singer: Bool = true
let otherBandMembers: [String] = ["Ringo", "Paul", "George"]


// Operators
var x = 10
var y = 5

// basic arithmetic
let sum = x + y  // 15
let diff = x - y // 5
let prod = x * y // 50
let quot = x / y // 2
let mod = x % y // 0

x += 20 // 30
x *= 10 // 300

let stringA = "ABC"
let stringB = "abc"

stringA == stringB // false
stringA != stringB // true
stringA == "ABC" // true

// String Interpolation
let personName = "Johnny"

let greeting = "Hello, \(personName)" // Hello Johnny
let personAge = 30
let personInfo = "The person's name is \(personName) and is \(personAge) years old." //The Person's name is Johnny and is 30 years old.

let x1 = 30
let y1 = 20
let answer = "The sum of \(x1) and \(y1) is \(x1 + y1)" // The sum of 30 and 20 is 50


