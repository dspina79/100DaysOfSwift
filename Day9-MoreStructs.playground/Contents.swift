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

// Using Initializers
struct Rectangle {
    var width: Int
    var height: Int
    var internalColor: String
    var area: Int {
        return width * height
    }
    
    init(height: Int, width: Int) {
        self.width = width
        self.height = height
        internalColor = "Transparent"
    }
}

var rect = Rectangle(height: 4, width: 5)
rect.internalColor = "red"
print(rect.area) // prints 20

