///# TypeAlias
import Foundation

///*In Swift, type-alias is a keyword used to give a new name (alias) to an existing data type. It allows you to create a custom name for a data type, making your code more readable and expressive. type-alias is particularly useful when you have complex data types or when you want to make your code more self-descriptive.

//The basic syntax for type-alias in Swift is as follows:


//typealias NewName = ExistingType
//Here's an example of using typealias:

typealias Coordinate = (x: Double, y: Double)

func distance(from point1: Coordinate, to point2: Coordinate) -> Double {
    let distanceX = point2.x - point1.x
    let distanceY = point2.y - point1.y
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

let pointA: Coordinate = (x: 2.0, y: 3.0)
let pointB: Coordinate = (x: 5.0, y: 7.0)

let distances = distance(from: pointA, to: pointB)
print("Distance between pointA and pointB: \(distances)")

///*In this example, we define a typealias Coordinate for the tuple type (x: Double, y: Double). By using typealias, we give a more meaningful and descriptive name to the tuple type, making the code more readable.

///*Using typealias can make your code easier to understand, especially when you are working with complex types or long type names. It can also improve code maintainability by providing clear and concise type names throughout your codebase.
