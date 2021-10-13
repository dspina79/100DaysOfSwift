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

// Breaking a Loop

var z = 10

while z > 0 {
    if z % 4 == 0 {
        break // exits the loop
    }
    print("The current number is \(z)")
    z -= 1
}
/*
 prints:
 The current number is 10
 The current number is 9
 */

// Breaking Outer loops
firstLoop: for firstNum in 1...100 {
    secondLoop: for secondNum in 1...100 {
        let prod = firstNum * secondNum
        if prod == 68 {
            print("We found a product of 68. It's \(firstNum) x \(secondNum)")
            break firstLoop  // exits the outer loop
        }
    }
}
// prints We found a product of 68. It's 1 x 68

// Using continue to Move to the Next Item in a Loop

for i in 1...15 {
    if i % 5 == 0 {
        continue
    }
    print("\(i) is a number that is not easily divisible by 5")
}
/*
 prints:
 1 is a number that is not easily divisible by 5
 2 is a number that is not easily divisible by 5
 3 is a number that is not easily divisible by 5
 4 is a number that is not easily divisible by 5
 6 is a number that is not easily divisible by 5
 7 is a number that is not easily divisible by 5
 8 is a number that is not easily divisible by 5
 9 is a number that is not easily divisible by 5
 11 is a number that is not easily divisible by 5
 12 is a number that is not easily divisible by 5
 13 is a number that is not easily divisible by 5
 14 is a number that is not easily divisible by 5
 */

// Infinite Loops with while
var counter = 0
while true {
    counter += 1
    
    if counter >= 200 {
        print("Hit the 200th mark")
        break
    }
}
