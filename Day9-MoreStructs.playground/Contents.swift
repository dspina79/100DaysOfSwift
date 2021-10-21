import UIKit

// More Structs
struct Fairy {
    var name: String
    var wingSpan: Int
    var hasWings: Bool {
        return wingSpan > 0
    }
}

var tinkerbell = Fairy(name: "Tinkerbell", wingSpan: 2)
print("Does \(tinkerbell.name) have wings? \(tinkerbell.hasWings)")
// prints Does Tinkerbell have wings? true

