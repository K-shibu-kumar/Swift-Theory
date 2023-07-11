// Extension

import Foundation

/*
 In Swift, extensions provide a way to add new functionality to existing classes, structures, enumerations, or protocols. They allow you to extend the behavior of types without subclassing, which is especially useful when you don't have access to the original source code or when you want to keep your code modular and organised.

 To define an extension in Swift, you use the extension keyword followed by the name of the type you want to extend. Here's an example that adds a computed property to the Int type:
 
 */

extension Int {
    var squared: Int {
        return self * self
    }
}

/*
 In this example, we're extending the Int type and adding a computed property called squared. Now, any instance of Int can access this property, which calculates the square of the integer value.
 */
let number = 5
print(number.squared) // Output: 25



/*
 Extensions can also be used to add instance methods, static methods, initialisers, subscript, and conform to protocols. Here are a few examples:
 */
extension String {
    func sayHello() {
        print("Hello, \(self)!")
    }
}

let name = "John"
name.sayHello() // Output: Hello, John!

extension Double {
    static func convertToDollars(amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        return formatter.string(from: NSNumber(value: amount)) ?? ""
    }
}

let price = 29.99
let priceInDollars = Double.convertToDollars(amount: price)
print(priceInDollars) // Output: $29.99

extension Array {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

let numbers = [1, 2, 3, 4, 5]
print(numbers[safe: 3] ?? 0) // Output: Optional(4)
print(numbers[safe: 10] ?? 0) // Output: nil

//extension CustomProtocol {
//    func customMethod() {
//        // Implementation goes here
//    }
//}


/*In the last example, CustomProtocol is a protocol, and we're extending it to add a custom method called customMethod.

Extensions in Swift are a powerful tool for enhancing the functionality of existing types and promoting code reuse and modularity. They allow you to add new methods, properties, and conformances without modifying the original type definition.
*/






let myDouble = 3.14159
let myRoundedDouble = String(format: "%.1f", myDouble)

