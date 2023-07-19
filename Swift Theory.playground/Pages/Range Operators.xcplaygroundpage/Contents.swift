///# Range Operator


///*In Swift, range operators are used to define a range of values. Ranges are useful for iterating over a sequence of values, extracting subranges from arrays or strings, and performing other operations on a continuous set of values. There are three range operators in Swift: the closed range operator, the half-open range operator, and the one-sided range operator.

///# Closed Range Operator (...):

///*The closed range operator (...) creates a range that includes both the start and end values. It forms a closed interval where the end value is also part of the range.

let closedRange = 1...5
print(closedRange) // Output: 1...5


///#Half-Open Range Operator (..<):

///*The half-open range operator (..<) creates a range that includes the start value but excludes the end value. It forms a half-open interval.

let halfOpenRange = 1..<5
print(halfOpenRange) // Output: 1..<5


///#One-Sided Range Operator (a... or ...b):
///
///*The one-sided range operator creates a range that is either unbounded at the start or unbounded at the end. It is used when you want to define a range that extends from the start of a sequence to a specific value or from a specific value to the end of a sequence.

let rangeFromOne = 1...
print(rangeFromOne) // Output: 1...

let rangeUpToFive = ...5
print(rangeUpToFive) // Output: ...5

///*Range operators are commonly used in various scenarios, such as looping through a sequence, extracting subranges from arrays or strings, slicing data, and more. Here are a few examples of using ranges:


let numbers = 1...10

for number in numbers {
    print(number)
}
// Output: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

let fruits = ["Apple", "Banana", "Orange", "Grapes", "Mango"]
let slicedFruits = fruits[1..<4]
print(slicedFruits) // Output: ["Banana", "Orange", "Grapes"]

///*Range operators are an essential part of Swift, and they provide a concise and expressive way to work with ranges of values in a wide range of scenarios.
