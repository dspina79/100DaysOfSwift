import UIKit

// for Loops

// simple range

for num in 1...5 {
    print("The number is \(num)")
}
/*
 prints:
 The number is 1
 The number is 2
 The number is 3
 The number is 4
 The number is 5
 */

// accross arrays
let people = ["Helen", "Mary", "Paul"]

for person in people {
    print("\(person) is in the group.")
}
/*
 prints:
 Helen is in the group.
 Mary is in the group.
 Paul is in the group.
 */

// unspecified values

for _ in 1...5 {
    print("In the loop!")
}

/*
 prints:
 In the loop!
 In the loop!
 In the loop!
 In the loop!
 In the loop!
 */

// while Loops

var x = 10

print("Counting down...")
while x > 0 {
    print(x)
    x -= 1
}
print("Liftoff!")
/*
 prints:
 Counting down...
 10
 9
 8
 7
 6
 5
 4
 3
 2
 1
 Liftoff!
 */


// repeat Loops - performs code in the brackets at least once

var y = 10
repeat {
    print("Printing \(y)")
} while y != 10
// prints Printing 10

