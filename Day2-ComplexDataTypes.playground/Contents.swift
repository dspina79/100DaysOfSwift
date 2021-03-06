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

// using a default value when accessing
ages["Tom"] // nil
ages["Tom", default: 0] // 0


// creating empty collection

// empty array options
let species = [String]()
let species2 = Array<String>()

// creating empty dictionary options
var teamMembers = [String: String]()
var teamMembers2 = Dictionary<String, String>()
teamMembers["Paul"] = "Lead Guitar"
teamMembers2["Gene"] = "Lead Vocals"

// empty sets
var mySet = Set<String>()


// enumerations
enum Sizes {
    case Small
    case Medium
    case Large
}

let drinkSize = Sizes.Large


enum Seasons {
    case Autumn
    case Winter
    case Spring
    case Summer
}

let currentSeason = Seasons.Autumn
let nextSeason = Seasons.Winter


// assocaited valuies in an enumeration
enum CourseResults {
    case passed(grade: Int)
    case failed
    case incomplete
    case attended
}

let johnsResults = CourseResults.passed(grade: 88)

// enum raw values
enum RomanNumerals: Int {
    case i
    case ii
    case iii
    case iv
    case v
    case vi
    case vii
    case viii
    case ix
    case x
}

let myNumber = RomanNumerals(rawValue: 3) // shows as iv which is odd

// retrying with setting intial number
enum RomanNumeralsTake2: Int {
    case i = 1
    case ii
    case iii
    case iv
    case v
    case vi
    case vii
    case viii
    case ix
    case x
}


let myNumber2 = RomanNumeralsTake2(rawValue: 3) // shows iii


// tesitng
var myHighSores = Set([89, 92, 29, 82, 93, 99, 75, 89])
myHighSores.insert(98)
myHighSores.insert(98)
myHighSores // {29, 89, 92, 82, 98, 99, 75, 93}


// tuple testing
var myFriend = (firstName: "Kate", lastName: "Mulgrew")
myFriend.lastName = "Janeway"
myFriend // (firstName "Kate", lastName "Janeway")
