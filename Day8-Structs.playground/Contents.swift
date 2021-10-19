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
