import UIKit

// Structs

// Basic Struct with Mutable Properties
struct GamePlay {
    var player1: String
    var player2: String
    var gameOver: Bool = false
}

var myFirstGame = GamePlay(player1: "Dean", player2: "Lindsey")

print(myFirstGame.player1) // prints "Dean"
myFirstGame.player2 = "Sean"
print(myFirstGame.player2) // prints "Sean"
myFirstGame.gameOver = true

// Computed Properties

struct Human {
    var name: String
    var age: Int
    var isMinor: Bool {
        return age < 18
    }
}

let bob = Human(name: "Bob", age: 82)
let charlie = Human(name: "Charlie", age: 12)
print(bob.isMinor) // prints false
print(charlie.isMinor) // prints true

// Property Observers with didSet and willSet

struct Project {
    var name: String
    var numberOfTasks: Double = 1
    var tasksCompleted: Double = 0 {
        didSet {
            let percentComplete = (tasksCompleted / numberOfTasks) * 100.0
            print("The project is now \(percentComplete)% done.")
        }
    }
}

var homework = Project(name: "My Homework", numberOfTasks: 5)
homework.tasksCompleted += 1
homework.tasksCompleted += 1
homework.tasksCompleted += 1
homework.tasksCompleted += 1
homework.tasksCompleted += 1
/*
 prints:
 The project is now 20.0% done.
 The project is now 40.0% done.
 The project is now 60.0% done.
 The project is now 80.0% done.
 The project is now 100.0% done.
 */


// Methods in Structs
struct City {
    var population: Int
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let rochester = City(population: 750000)
let taxes = rochester.collectTaxes()
print(taxes) // prints 750000000


// Mutating Methods
struct Cat {
    var name: String
    var originalName = ""
    
    mutating func changeName(newName: String) {
        if originalName == "" {
            originalName = name
        }
        name = newName
    }
    
    mutating func resetName() {
        if originalName != "" {
            name = originalName
        }
    }
}

// to mutate values, the instance must be a var
var cat1 = Cat(name: "Percy")
print(cat1.name) // prints Percy
cat1.changeName(newName: "Precious")
print(cat1.name) // prints Precious
cat1.resetName()
print(cat1.name) // prints Percy

