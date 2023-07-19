///# String


///# String Interpolation

///*String interpolation in Swift allows you to include the values of variables, constants, and expressions directly within a string literal. It's a convenient way to construct strings dynamically by embedding the values you want to display or manipulate.

///*In Swift, you use the backslash and parentheses (\(expression)) syntax within a string to perform string interpolation. Here's how it works:

let variable = "value"
let number = 42

let interpolatedString = "This is a string with an interpolated variable: \(variable). And here's a number: \(number)."
print(interpolatedString)
// Output: This is a string with an interpolated variable: value. And here's a number: 42.
///*You can use any valid expression inside the interpolation, including calculations, function calls, and even other interpolated strings:


let x = 10
let y = 5

let results = "\(x) + \(y) equals \(x + y)."
print(results)
// Output: 10 + 5 equals 15.
///*String interpolation is a powerful feature that simplifies the process of creating dynamic strings, making the code more readable and maintainable compared to manually concatenating strings and values. It's commonly used in building user interfaces, displaying information to users, and logging debug information during development.






///# String Concatenation

///*In Swift, string concatenation is the process of combining two or more strings to create a single, larger string. There are multiple ways to concatenate strings in Swift. Let's explore some of the common methods:

///# 1. Using the + operator:

let firstName = "John"
let lastName = "Doe"

let fullName = firstName + " " + lastName
print(fullName)
// Output: John Doe

///# 2. Using the += operator (for mutable strings):

var greeting = "Hello, "
let name = "Alice"

greeting += name
print(greeting)
// Output: Hello, Alice


///# 3. Using string interpolation (already explained):

let a = 10
let b = 5

let result = "\(a) + \(b) equals \(a + b)."
print(result)
// Output: 10 + 5 equals 15.

///# 4. Using the join method (available on arrays of strings):

let fruits = ["Apple", "Orange", "Banana"]

let joinedString = fruits.joined(separator: ", ")
print(joinedString)
// Output: Apple, Orange, Banana

///*Remember that when you perform string concatenation, Swift creates a new string that contains the combined contents of the original strings. If you frequently need to concatenate large strings in a loop, it's more efficient to use NSMutableString or String.append(_:) for better performance, as these approaches modify the string in place without creating new copies at each concatenation step. However, be cautious with mutable strings, as they can lead to unintended side effects if not used carefully. For most cases, using the + operator or string interpolation is sufficient and more readable.






///# String literals

///*In Swift, a string literal is a sequence of characters enclosed in double quotes (""). It is a convenient way to define and initialise a string without explicitly creating an instance of the String type. String literals are used extensively in Swift for representing textual data.

//Here are some examples of string literals:


let hello = "Hello, World!"
let newName = "John Doe"
let multilineString = """
    This is a multiline string literal.
    It can span multiple lines
    and preserve the line breaks.
    """
//In the above examples:

///*"Hello, World!" is a simple string literal containing the text "Hello, World!".
///*"John Doe" is another simple string literal with the text "John Doe".
///*""" ... """ is a multiline string literal that starts and ends with three double quotes. It allows you to create a string that spans multiple lines, preserving the formatting and line breaks within the string.
///*String literals are immutable, meaning you cannot change their content once they are defined. However, you can use string interpolation to create new strings by embedding variables and expressions within a string literal:

let age = 30
let message = "I am \(age) years old."
print(message)
// Output: I am 30 years old.

///*In this example, \(age) inside the string literal is the string interpolation syntax that dynamically replaces \(age) with the value of the age variable.

///*String literals are fundamental for representing textual data in Swift, and they can be used for various purposes, such as displaying text in the user interface, constructing messages, logging information, and more.






///# String Optional


///*In Swift, an optional is a type that represents the presence or absence of a value. It allows you to handle situations where a value might be missing or nil, especially when dealing with variables or properties that could be uninitialized or have no value.

///*The syntax for defining an optional is to append a question mark (?) to the type declaration. For example:

var age0: Int? // age0 is an optional Int
var name0: String? // name0 is an optional String
//Here are some key points about optionals:

///*An optional variable can either have a value of the specified type or be nil. nil represents the absence of a value.
///*You must use optional binding or optional chaining to safely unwrap an optional and access its underlying value. This is necessary because directly accessing the value of an optional without checking for nil could lead to a runtime error if the optional is nil.


///# 1. Optional Binding Example:

var age1: Int? = 30

if let unwrappedAge = age1 {
    print("Age is \(unwrappedAge)")
} else {
    print("Age is not available")
}
// Output: Age is 30


///# 2. Optional Chaining Example:

struct Person {
    var name: String?
}

let person1 = Person(name: "John")
let person2 = Person(name: nil)

print(person1.name?.uppercased() ?? "Name not available") // Output: JOHN
print(person2.name?.uppercased() ?? "Name not available") // Output: Name not available


///# 3. Force-Unwrap

///*You can force-unwrap an optional using the exclamation mark (!). This tells Swift that you're certain the optional has a value, but it's risky since force-unwrapping a nil optional will crash your program with a runtime error.
//Example of Force-Unwrapping:

var name2: String? = "John"
let unwrappedName = name2!
print("Name is \(unwrappedName)")
// Output: Name is John

///*It's important to use optionals appropriately and handle their unwrapping safely to avoid runtime errors and improve the overall stability of your Swift code. When you are unsure whether a value exists, it's better to work with optionals using optional binding or optional chaining instead of force-unwrapping.
