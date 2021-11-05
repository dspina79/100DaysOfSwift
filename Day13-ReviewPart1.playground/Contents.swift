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
} // prints Either Shelly or Helen are here

// Loops
for i in 1...5 {
    print(i)
}
/*
 prints:
 1
 2
 3
 4
 5
 */

// times table
for x in 0...12 {
    for y in 0...12 {
        print("\(x * y)", separator: "\t", terminator: "\t")
    }
    print("")
}
/*
 prints:
 0    0    0    0    0    0    0    0    0    0    0    0    0
 0    1    2    3    4    5    6    7    8    9    10    11    12
 0    2    4    6    8    10    12    14    16    18    20    22    24
 0    3    6    9    12    15    18    21    24    27    30    33    36
 0    4    8    12    16    20    24    28    32    36    40    44    48
 0    5    10    15    20    25    30    35    40    45    50    55    60
 0    6    12    18    24    30    36    42    48    54    60    66    72
 0    7    14    21    28    35    42    49    56    63    70    77    84
 0    8    16    24    32    40    48    56    64    72    80    88    96
 0    9    18    27    36    45    54    63    72    81    90    99    108
 0    10    20    30    40    50    60    70    80    90    100    110    120
 0    11    22    33    44    55    66    77    88    99    110    121    132
 0    12    24    36    48    60    72    84    96    108    120    132    144
 */
