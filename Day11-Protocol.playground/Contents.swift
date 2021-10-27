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

// Protocol Inheritance
// i.e. Multiple Inheritance

protocol Monitorable {
    func monitor()
}

protocol FinderKeeper {
    var searchParam: String { get set}
    func findAndKeep() -> Bool
}

protocol Publicator {
    func publish(title: String) -> String
}

// inheriting from other protocols
protocol MyBot: Monitorable, FinderKeeper, Publicator {}

// the following could also be written as:
// struct SystemAdminBot: Monitorable, FinderKeeper, Publicator {

struct SystemAdminBot: MyBot {
    var searchParam: String = ""
    var name: String
    
    func monitor() {
        print("Monitoring system...")
    }
    
    func findAndKeep() -> Bool {
        if searchParam != "" {
            print("Found \(searchParam)")
            return true
        }
        
        return false
    }
    
    func publish(title: String) -> String {
        print("Publishing \(title)")
        return "\(title) (Published)"
    }
}

var sysbot1 = SystemAdminBot(name: "SysBot1")
sysbot1.monitor()
sysbot1.searchParam = "bolts"
print(sysbot1.findAndKeep())
print(sysbot1.publish(title: "Do Androids Dream of Electric Sheep?"))
/*
 prints:
 Monitoring system...
 Found bolts
 true
 Publishing Do Androids Dream of Electric Sheep?
 Do Androids Dream of Electric Sheep? (Published)
 */


// Extensions

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    func cube() -> Int {
        return self * self * self
    }
}

let x = 14
print(x.isEven) // prints true
print(x.cube()) // prints 2744

// Protocol Extensions
protocol WiseBot {
    var magicSystem: String {get set}
    func provideWisdom()
}

struct WizardBot: WiseBot {
    var name: String
    var magicSystem: String
    
    func provideWisdom() {
        print("A bird in the hand is worth more than two in the bush...")
    }
}

struct MonkBot: WiseBot {
    var name: String
    var fightingStyle: String
    var magicSystem: String
    
    func fight() {
        print("Harduuuken!")
    }
    
    func provideWisdom() {
        print("There is more to life than the shells we hold.")
    }
}

// extending all members who inherit the same protocol
extension WiseBot {
    func generateAura() {
        print("Generating an aura")
    }
}

let gandalf = WizardBot(name: "Gandalf", magicSystem: "Arcane")
let ryu = MonkBot(name: "Ryu", fightingStyle: "Judo", magicSystem: "Kinetic")
gandalf.provideWisdom()
ryu.provideWisdom()
gandalf.generateAura()
ryu.generateAura()
/*
 prints:
 A bird in the hand is worth more than two in the bush...
 There is more to life than the shells we hold.
 Generating an aura
 Generating an aura
 */
