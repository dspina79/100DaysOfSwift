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
