///# Basic Data Types

///*In Swift, data types are used to define the type of data that a variable or constant can hold. Swift is a statically typed language, meaning you need to specify the data type explicitly when declaring a variable or constant. Here are some common data types in Swift along with examples:
 

///*Int: Used for whole numbers (both positive and negative) without fractional parts.

let age: Int = 30
var score: Int = -10


///*Double: Used for floating-point numbers with double precision (decimal numbers).

let pi: Double = 3.14159
var temperature: Double = 25.5


///*Float: Used for floating-point numbers with single precision.

let gravity: Float = 9.81
var distance: Float = 100.5


///*Bool: Represents a boolean value, either true or false.

let isStudent: Bool = true
var isLoggedIn: Bool = false


///*String: Used for text and character data.

let name: String = "John Doe"
var message: String = "Hello, World!"


///*Character: Represents a single character.

let firstLetter: Character = "A"
var grade: Character = "B"


///*Array: An ordered collection of elements of the same type.

var numbers: [Int] = [1, 2, 3, 4, 5]
var fruits: [String] = ["Apple", "Banana", "Orange"]


///*Dictionary: A collection of key-value pairs where each value is associated with a unique key.

var scores: [String: Int] = ["John": 85, "Alice": 92, "Bob": 78]
var ages: [String: Int] = ["Alice": 28, "Bob": 30, "Carol": 25]


///*Tuple: A group of multiple values of different types combined into a single compound value.

let person: (String, Int, Bool) = ("John Doe", 30, true)
var coordinates: (Double, Double) = (40.7128, -74.0060)


///*Optional: A special type that represents either a wrapped value or nil, indicating the absence of a value.

var optionalName: String? = "Optional Value"
var maybeAge: Int? = nil


///*These are some of the common data types in Swift, but there are more advanced types and custom data types you can define in Swift as well.
