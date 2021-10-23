import UIKit

// Classes
// classes are like structs with several differences
// including no memberwise initializers

class Fish {
    var name: String
    var bonyFish: Bool = true
    var species: String
    
    init(name: String, species: String) {
        self.name = name
        self.species = species
    }
}

let nemo = Fish(name: "Nemo", species: "Clown Fish")
print(nemo.bonyFish) // prints true


// Inheritance or Subclassing
class Goldfish : Fish {
    init(name: String) {
        super.init(name: name, species: "Goldfish")
    }
}

let moby = Goldfish(name: "Moby")
print(moby.species) // prints Goldfish

// Override Methods
class Shape {
    var side1: Int
    var side2: Int
    var side3: Int
    
    init(side1: Int, side2: Int, side3: Int) {
        self.side1 = side1
        self.side2 = side2
        self.side3 = side3
    }
    
    func getPerimiter() -> Int {
        return side1 + side2 + side3
    }
}

class Triangle: Shape {
    
}

class Square: Shape {
    var side4: Int
    init(side: Int) {
        self.side4 = side
        super.init(side1: side, side2: side, side3: side)
    }
    
    override func getPerimiter() -> Int {
        return side4 * 4
    }
}


let triangle = Triangle(side1: 3, side2: 5, side3: 4)
let square = Square(side: 7)
print(triangle.getPerimiter()) // prints 12
print(square.getPerimiter()) // prints 28
