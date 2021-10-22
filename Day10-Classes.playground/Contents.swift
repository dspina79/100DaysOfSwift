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


