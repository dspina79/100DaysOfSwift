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
