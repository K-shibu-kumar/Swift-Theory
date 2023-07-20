///# Error Handling


///*Error handling in Swift allows you to handle and recover from errors that occur during the execution of your code. Errors in Swift are represented using the Error protocol or any custom type that conforms to Error. When an error occurs, you can use error handling to gracefully handle the error and take appropriate actions.

///*Error handling in Swift is done using the do-catch statement. The basic syntax is as follows:

//  do {
//      // Code that can potentially throw an error
//      try expression
//  } catch pattern1 {
//      // Code to handle the error matching pattern1
//  } catch pattern2 where condition {
//      // Code to handle the error matching pattern2 and condition
//  } catch {
//      // Code to handle any other error not caught by previous catch blocks
//  }

//Here's an example of using error handling in Swift:

enum MathError: Error {
    case divisionByZero
    case negativeNumber
}

func divide(_ a: Int, by b: Int) throws -> Int {
    guard b != 0 else {
        throw MathError.divisionByZero
    }
    
    guard a >= 0 && b >= 0 else {
        throw MathError.negativeNumber
    }
    
    return a / b
}

do {
    let result = try divide(10, by: 2)
    print("Result: \(result)")
} catch MathError.divisionByZero {
    print("Cannot divide by zero.")
} catch MathError.negativeNumber {
    print("Both numbers should be positive.")
} catch {
    print("An error occurred: \(error)")
}
///*In this example, we define an enumeration MathError that conforms to the Error protocol. The divide(_:by:) function can throw errors of type MathError if the division by zero or if any of the numbers is negative. We use the do-catch statement to call the divide(_:by:) function and handle the errors appropriately.

///*Error handling in Swift helps you write code that is more resilient and robust, making it easier to handle unexpected situations without crashing the program. It promotes better control flow and clearer error reporting, leading to more reliable and maintainable code.
