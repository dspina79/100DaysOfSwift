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

struct SystemAdminBot: Monitorable, FinderKeeper, Publicator {
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
