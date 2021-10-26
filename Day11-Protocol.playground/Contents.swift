import UIKit

// Protocols
// similar to interfaces

// a simple type template
protocol NamedItem {
    var name: String {get set}
}

struct Frog: NamedItem {
    var name: String
    var color: String
}

struct Toad: NamedItem {
    var name: String
}

func printNamedItem(item: NamedItem) {
    print("The item is named \(item.name)")
}

var froggy = Frog(name: "Froggy", color: "Green")
var toadie = Toad(name: "Toadie")

printNamedItem(item: froggy)
printNamedItem(item: toadie)

/*
 prints:
 The item is named Froggy
 The item is named Toadie
 */
