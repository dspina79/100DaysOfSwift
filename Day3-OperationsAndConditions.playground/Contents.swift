import UIKit

// Arithmetic Operations
let x = 10
let y = 5
let z = 11

let sum = x + y // 15
let diff = x - y // 5
let product = x * y // 50
let quotient = x / y // 2
let modulus = z  % x // 1

// Operation Overloads
let doubleSum = 43.0 + 29.7 // 72.7
let stringSum = "Hello " + "John" // Hello John
let arraySum = [1, 2] + [3, 4, 5] // [1, 2, 3, 4, 5]

// Compound Assignment
var a = 10
var b = 5
var c = 6

a += b // 15
a -= b // 10
a *= b // 50
a /= b // 10
a %= c // 4

var stringA = "Bob"
stringA += " is a cool person" // Bob is a cool person

// Comparison Operators
let num1 = 20
let num2 = 10

// equality
num1 == num2 // false
num1 != num2 // true
num1 == 20 // true

// comparison
num1 < num2 // false
num1 <= num2 // false

num1 > num2 // true
num1 >= num2 //true

num1 >= 20 //true
num1 == 20

// comparisons with strings
"George" <= "Herbert" // true
"George" > "Adam" // true

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("You did not get 21")
}

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard > 21 {
    print("Bust!")
} else {
    print("You got a \(firstCard + secondCard)")
}

// Combining Conditions with Logical Operators
let personName1 = "Peter"
let personName2 = "Paul"
let personName3 = "Mary"

// logical AND
if personName1 == "Peter" && personName2 == "Henry" {
    print("Peter and Henry are in the house.")
} else {
    print("The two guys I was looking for are not here.")
} // prints The two guys I was lookign for are not here.

// logical OR
if personName1 == "Peter" || personName2 == "Henry" {
    print("At least one of the guys is here.")
} else {
    print("The two guys I was looking for are not here.")
} // prints At least one of the guys his here.

// combining
if personName1 == "Peter" && personName2 == "Paul" && personName3 == "Mary" {
    print("You got a band!")
} else {
    print("You don't have a full band.")
} // prints You got a band!


// Ternary Operation
let player1Score = 100
let player2Score = 101
print(player1Score > player2Score ? "Player 1 beat player 2" : "Player 2 beat player 1")
// prints Player 2 beat player 1"


// Switch Statement
let diceRoll = 5
switch diceRoll {
case 1:
    print("You rolled a one")
case 2:
    print("You rolled a two")
case 3:
    print("You rolled a three")
case 4:
    print("You rolled a four")
case 5:
    print("You rolled a five")
case 6:
    print("You rolled a six")
default:
    print("I have no idea what you rolled.")
}
// prints You rolled a five

// Swtich with Fallthrough
switch diceRoll {
case 6:
    print("You rolled a six")
    fallthrough
case 5:
    print("You rolled at least a five.")
    fallthrough
case 4:
    print("You rolled at least a four.")
    fallthrough
case 3:
    print("You rolled at least a three.")
    fallthrough
case 2:
    print("You rolled at least a two.")
    fallthrough
case 1:
    print("You rolled at least a one.")
default:
    print("A dice was rolled.")
}
/*
 prints
 You rolled at least a five.
 You rolled at least a four.
 You rolled at least a three.
 You rolled at least a two.
 You rolled at least a one.
*/
