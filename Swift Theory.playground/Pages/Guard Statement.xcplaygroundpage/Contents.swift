///# Guard Statement


///*The guard statement in Swift is used to early exit from a function, method, or code block if a condition is not met. It is often used as a counterpart to the if statement, providing a clearer way to handle negative scenarios and reducing nested code blocks.

//The guard statement has the following syntax:

//let condition = true
//guard condition else {
//    // Code to execute if the condition is false
//    // This block must exit the scope using a return, throw, break, or continue statement.
//}

///*The guard statement checks the specified condition. If the condition is false, the code inside the else block is executed. It is mandatory for the code inside the else block to exit the current scope using one of the following statements: return, throw, break, or continue. This ensures that the flow of the program can't continue further if the condition is not met.

//Here's an example of using guard to validate a function parameter and early exit if the condition is not met:

func processAge(_ age: Int) {
    guard age >= 0 else {
        print("Invalid age: age cannot be negative.")
        return
    }
    
    // Code to process the valid age
    print("Age is valid: \(age)")
}

processAge(25) // Output: Age is valid: 25
processAge(-5) // Output: Invalid age: age cannot be negative.

///*In this example, the processAge(_:) function checks if the age parameter is non-negative using the guard statement. If the age is negative, it prints an error message and exits the function immediately with a return statement. If the age is valid, it proceeds to process the age accordingly.

///*The guard statement is especially useful for reducing nested code blocks and making code more readable, as it separates the error handling logic from the main processing code. It's commonly used in combination with optionals, where you want to handle the case where a value is missing.
