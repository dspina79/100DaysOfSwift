import UIKit

// complex data types
let person1 = "Mary Ellen"
let person2 = "John Miller"
let person3 = "Harriet Spellman"

let persons = [person1, person2, person3]
persons[2] // displays Harriet Spellman

// arrays with type declaration
let managers: [String] = ["Les Paulson", "Helen Pearson"]
managers[1] // Helen Pearson


// sets
// initializing a set from an array
let colors = Set(["red", "blue", "yellow"])
// duplicates are ignored
let colors2 = Set(["red", "blue", "red", "magenta", "yellow", "blue"]) // only red, blue, magenta, yellow


// tuples
var myself = (firstName: "Dean", lastName: "Anips", age: 40)
myself.0 // Dean
myself.lastName // Anips
myself.age = 42
myself // (firstName "Dean", lastName "Anips", age 42)

// dictionaries
let ages = [
    "John Miller": 39,
    "Harriet Smith": 44,
    "Lou Mostel": 28,
    "Rachel Dockman": 30
]

ages["Lou Mostel"] // 28
