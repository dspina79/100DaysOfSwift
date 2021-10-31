import UIKit

// Optionals

// Simple declaration of an optional
var age: Int? = nil
var middleName: String?

age = 30

print(age) // prints 30
print(middleName) // prints nil

// Unwrapping an optional
if let mname = middleName {
    print("The person's middle name is \(mname)")
} else {
    print("No middle name was supplied.")
}
// prints No middle name was supplied.

// Optionals in a Struct

struct MaybePerson {
    var firstName: String?
    var lastName: String?
    var age: Int = 0
}

var bobby = MaybePerson()
bobby.firstName = "Robert"
bobby.lastName = "Robertson"
print(bobby.firstName!) // unwraps explicitly

// Using guard let to unwrap initially
func greet(_ name: String?) {
    guard let personName = name else {
        print("Hello, nobody")
        return
    }
    
    print("Hello, \(personName)")
}

greet(nil) // prints Hello, nobody
greet("Brian") // prints Hello, Brian

let noone: String? = nil
greet(noone) // prints Hello, nobody

let reallySomthing: String? = "Bread"
print(reallySomthing!) // force unwraps

// Implictly Unwrapped Optionals
var churchLocation: String! = nil
// no need for guard let
churchLocation = "Bridgewater, CT"
print(churchLocation)


// Nil Coallessing
var grainWeight: Int?
var minimalWeight: Int = grainWeight ?? 100 // 100
grainWeight = 39
minimalWeight = grainWeight ?? 100 // 39

func newGreeting(name: String?) -> String {
    return "Hello, " + (name ?? "Someone")
}

var name1: String?
var name2: String? = "Dean"
print(newGreeting(name: name1)) // prints Hello, Someone
print(newGreeting(name: name2)) // prints Hello, Dean

// Optional Chaining
struct ThingWithNames {
    var firstName: String?
    var lastName: String?
}

var toby = ThingWithNames(firstName: "Toby", lastName: "Wasserman")
var cher = ThingWithNames()
cher.firstName = "Cher"
let gilligan: ThingWithNames? = nil
let gilliganLastName = gilligan?.lastName?.uppercased() // nil

let upperToby = toby.firstName?.uppercased()
let upperCher = cher.lastName?.uppercased() // will be nil
print(upperCher ?? "No name provided") // prints No name provided
print(upperToby!) // prints "TOBY"

let favoriteFlavors = ["Ben" : "Vanilla", "John": "Chocolate", "Lisa": "Strawbery"]
let lisasFavorite = favoriteFlavors["Lisa"]?.lowercased();
let billysFavorite = favoriteFlavors["Billy"]?.lowercased() // nill
print(lisasFavorite!) // prints "strawberry"

// Optional Try (try?)
// makes throwing functions act as optionals

enum PasswordError: Error {
    case tooSmall
}
func checkPassword(username: String, password: String) throws -> Bool {
    if password.count < 5 {
        throw PasswordError.tooSmall
    }
    return true
}

if let passwordResult = try? checkPassword(username: "simpleuser", password: "p123") {
    print("Password result is \(passwordResult)")
} else {
    print("Password failed")
}
// prints Password failed

// let's try it again
if let passwordResult2 = try? checkPassword(username: "simpleuser", password: "password123") {
    print("Password result is \(passwordResult2)")
} else {
    print("Password failed")
}
// prints Password result is true

// Failable Initializers
// returns nil if there is an error in initialization

struct UserCredentials {
    var username: String
    var password: String
    
    init?(username: String, password: String) {
        if (username.isEmpty || password.isEmpty) {
            return nil
        } else {
            self.username = username
            self.password = password
        }
    }
    
    func getConcatenation() -> String {
        return "\(self.username):\(self.password)"
    }
}

if let usercred1 = UserCredentials(username: "", password: "") {
    print("User credential created, \(usercred1.getConcatenation())")
} else {
    print("Failed to create credential")
}
// prints Failed to create credential


if let usercred2 = UserCredentials(username: "user1", password: "password123") {
    print("User credential created, \(usercred2.getConcatenation())")
} else {
    print("Failed to create credential")
}
// prints User credential created, user1:password123
