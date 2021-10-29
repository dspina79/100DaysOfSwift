import UIKit

// Optionals

// Simple declaration of an optional
var age: Int? = nil
var middleName: String?

age = 30

print(age) // prints 30
print(middleName) // prints nil

// Unwrapping an optional
if let mname = middleName {
    print("The person's middle name is \(mname)")
} else {
    print("No middle name was supplied.")
}
// prints No middle name was supplied.

