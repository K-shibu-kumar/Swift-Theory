// Extension

import Foundation
import UIKit

/*
 In Swift, extensions provide a way to add new functionality to existing classes, structures, enumerations, or protocols. They allow you to extend the behaviour of types without subclassing, which is especially useful when you don't have access to the original source code or when you want to keep your code modular and organised.

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






// Example:- On inbuilt Data types


//let myRoundedDouble = String(format: "%.1f", myDouble) //Mark:- Double rounded to String

//print(myDouble.rounded()) //Mark:- here the double is rounded in to Int

//In this particular scenario we can create an Extension to make this feature work
// Rounding the Double in to x places

extension Double {
    
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self // every double can now access this extension.
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
    
}


var myDouble = 3.14159

//myDouble = myDouble * 1000  // all of this functionality is implemented inside the Extension
//myDouble.round()
//myDouble = myDouble / 1000


myDouble.round(to: 3)

let anotherDouble = 56.283765
anotherDouble.round(to: 1)





// Example:- First extension , then implementation


extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
//button.layer.cornerRadius = 25  // let's make this feature with extension
//button.clipsToBounds = true

let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
button.makeCircular()


let button1 = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
button1.backgroundColor = .green
button1.makeCircular() // We can now access the extension we created in to any UIButton





// Example :- Protocol Extension

//Refer protocols .Swift

