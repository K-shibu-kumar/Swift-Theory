///# Expressions



///*In Swift, an expression is a combination of values, variables, operators, and function calls that produce a single value. Expressions can be simple or complex, depending on the operations involved. When an expression is evaluated, it results in a single value of a specific data type.

// Hare some examples of expressions in Swift:

///# Arithmetic Expressions:

let x = 5
let y = 10
let sum = x + y
let subtraction = x - y
let product = x * y
let division = y / x


///# String Concatenation:

let firstName = "John"
let lastName = "Doe"
let fullName = firstName + " " + lastName


///# Boolean Expressions:

let isSunny = true
let isRainy = false
let isNiceWeather = isSunny && !isRainy


///# Function Call Expressions:

func square(_ number: Int) -> Int {
    return number * number
}

let result = square(5) // result will be 25


///# Ternary Conditional Operator:

let age = 17
let isAdult = age >= 18 ? "Yes" : "No"


///# Optional Chaining:

struct Person {
    var name: String
    var address: String?
}

let person: Person? = Person(name: "Alice", address: nil)
let address = person?.address ?? "Address not available"


///# Type Conversion Expressions:

let intValue = 42
let doubleValue = Double(intValue)


///# Range Expressions:

let numbers = 1...10 // Creates a range from 1 to 10 (inclusive)
let alphabet = "A"..."Z" // Creates a range of characters from A to Z


///# Array and Dictionary Literals:

let numbers0 = [1, 2, 3, 4, 5]
let person0 = ["name": "John", "age": 30, "isEmployed": true] as [String : Any]


///*In Swift, expressions are used throughout the language to perform calculations, comparisons, and evaluations. They are fundamental to writing functional and meaningful code. Understanding expressions is crucial for effectively working with Swift and developing efficient algorithms.
