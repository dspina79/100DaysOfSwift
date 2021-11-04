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


// Arrays
let myCollection: [Int] = [4, 3, 5, 10, 48842, 38]
print(myCollection[3]) // prints 10
for x in myCollection {
        print(x, separator: " ", terminator: "-")
} // prints 4-3-5-10-48842-38-

// handling arrays with any type of data
let myMixCollection: [Any] = ["Don", 39, false, 2389.234, "Things"]
for x in myMixCollection {
        print(x, separator: " ", terminator: "-")
} // prints Don-39-false-2389.234-Things-

// instantiating an array to begin collection/management
// generates an empty array
var myFavoriteSongs = [String]()
myFavoriteSongs.append("Bohemian Rhapsody")
myFavoriteSongs.append("Life on Mars")
myFavoriteSongs.append("It's Only Make Believe")
myFavoriteSongs += ["Freedom Fighters"]
print(myFavoriteSongs.count) //prints 4


// Dictionaries
var personData = ["FirstName": "Dean", "LastName": "Smith"];
print(personData["LastName"]!) // prints optional "Smith"

if let lastName = personData["LastName"] {
    print(lastName)
} // prints Smith

var simpsonAges = Dictionary<String, Int>()
simpsonAges["Bart"] = 10
simpsonAges["Lisa"] = 8
simpsonAges["Maggie"] = 0
simpsonAges["Homer"] = 38
simpsonAges["Marge"] = 38

for key in simpsonAges.keys {
    print("\(key) is \(simpsonAges[key]!) years old.")
}
/*
 prints:
 Marge is 38 years old.
 Homer is 38 years old.
 Bart is 10 years old.
 Maggie is 0 years old.
 Lisa is 8 years old.
 */

// Conditional Statements and Logic Operators

let x2 = 40
let y3 = 60

if x2 > y3 {
    print("X is greater or equal to y")
} else if x2 == y3 {
    print("X is equal to y")
} else {
    print("X is less than y")
} // prints X is less than y


// Switch
let personName1 = "Shelly"

switch personName1 {
case "Brian": print("I can't believe Brian made it")
case "Shelly": fallthrough
case "Helen": print("Either Shelly or Helen are here")
default: print("Who the heck is this?")
} // prints Who the heck is this?
