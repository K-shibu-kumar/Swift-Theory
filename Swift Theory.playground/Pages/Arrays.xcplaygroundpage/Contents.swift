///# Array

///*In Swift, an array is a collection type that allows you to store multiple values of the same type in an ordered list. Arrays are an essential data structure used to group related elements together for easier management and manipulation. Here's how you can declare, initialise, and use arrays in Swift:

// 1. Declaring an array:
var numbers: [Int] // Declare an array of integers
var names: [String] // Declare an array of strings

// 2. Initialising an array:
///*You can create an array and provide its initial values using an array literal, which is a list of elements separated by commas and enclosed in square brackets.

var numbers0: [Int] = [1, 2, 3, 4, 5]
var fruits: [String] = ["Apple", "Banana", "Orange"]

///*You can also use type inference: to let Swift infer the type of the array based on the provided initial values:


var numbers1 = [1, 2, 3, 4, 5] // Swift infers that it's an array of Int
var fruits1 = ["Apple", "Banana", "Orange"] // Swift infers that it's an array of String


///# Accessing elements in an array:
///*You can access elements in an array using their index. The index of the first element is 0, and the last element's index is array.count - 1.

var numbers2 = [1, 2, 3, 4, 5]
print(numbers2[0]) // Output: 1
print(numbers2[2]) // Output: 3

///# Modifying elements in an array:
///*You can modify elements in an array by assigning new values to specific indices.

var numbers3 = [1, 2, 3, 4, 5]
numbers3[2] = 10
print(numbers3) // Output: [1, 2, 10, 4, 5]


///#Array methods:
///*Swift provides various useful methods to manipulate arrays. Some commonly used methods include append(_:), insert(_:at:), remove(at:), and count.

var fruits2 = ["Apple", "Banana"]
fruits2.append("Orange")
fruits2.insert("Mango", at: 1)
fruits2.remove(at: 0)
print(fruits1) // Output: ["Mango", "Banana", "Orange"]
print(fruits1.count) // Output: 3

///*Arrays are versatile and widely used in Swift programming. They provide a powerful way to organise and work with collections of data. Whether you're dealing with a list of numbers, strings, or any other type, arrays are an essential tool to have in your Swift programming toolkit.
