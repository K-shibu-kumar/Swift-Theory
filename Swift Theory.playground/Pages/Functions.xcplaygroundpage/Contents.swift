///# Functions


///*In Swift, a function is a reusable block of code that performs a specific task or calculates a value. Functions are an essential building block of any Swift program and help in organising code, promoting reusability, and making the code more maintainable.

//Here's the basic syntax of defining a function in Swift:

//func functionName(parameters) -> ReturnType {
//    // Function body: code that performs the task
//    // Return a value of ReturnType (if applicable)
//}

///* func: Keyword used to define a function.
///*functionName: The name of the function. Choose a descriptive name that indicates the purpose of the function.
///*parameters: A list of input parameters that the function accepts, enclosed in parentheses. Parameters are used to pass data into the function for processing.
///*ReturnType: The type of value that the function returns. If a function doesn't return a value, use Void (which is an empty tuple, also written as ()).

//Here's an example of a simple function that adds two numbers and returns the result:

func addNumbers(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let result = addNumbers(5, 10)
print("The result is: \(result)") // Output: The result is: 15
//In this example:

///*addNumbers is the function name.
///*_ a: Int, _ b: Int: The function accepts two integer parameters (a and b) and uses external parameter names (_) for a more natural function call.
///*-> Int: The function returns an integer value (the sum of a and b).Functions can have any number of parameters (including zero), and they can also have default values for parameters to provide flexibility when calling the function.

//Here's an example of a function with a default parameter value:

func greetUser(name: String = "Guest") {
    print("Hello, \(name)!")
}

greetUser() // Output: Hello, Guest!
greetUser(name: "John") // Output: Hello, John!

//In this example, the greetUser function has a default parameter value of "Guest". If no argument is provided, the default value is used.

///*Functions can also be overloaded, meaning you can define multiple functions with the same name but different parameter types or numbers of parameters. Swift will determine which function to call based on the provided arguments.

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

//In this example, the multiply function is overloaded to handle both integer and double types.

///*Swift functions are a fundamental concept in programming, and mastering them is essential for writing clean, modular, and maintainable code.



///# Nesting and Scope


///*In Swift, functions can be nested within other functions, allowing you to organise code more effectively and encapsulate functionality. When a function is defined within another function, it is called a nested function. The nested function has access to the variables and constants declared in the outer function, as well as the global scope. However, it is only accessible within the scope of the outer function and cannot be called from outside.

//Here's an example of nesting functions in Swift:

func outerFunction() {
    let outerValue = 10

    func innerFunction() {
        let innerValue = 5
        print("Inner function: \(innerValue), Outer function: \(outerValue)")
    }

    innerFunction()
}

outerFunction()
// Output: Inner function: 5, Outer function: 10

///*In this example, innerFunction() is defined within outerFunction(). The innerFunction() has access to both innerValue and outerValue declared in the outer scope, and it can use them inside its body. However, if you try to call innerFunction() outside of outerFunction(), you'll get an error, as it is not accessible in the global scope:


// This will result in an error: 'innerFunction' is not defined
//#innerFunction()
///*The scope of a nested function is limited to the scope of the enclosing function. It means you can't define a function inside another function and then call it from outside the enclosing function. This allows you to encapsulate functionality and prevent name conflicts.

///*Nested functions are particularly useful when you need to create helper functions that are only relevant within the context of the outer function. It improves code organisation and readability by keeping related functionality together.

///*It's essential to understand the concept of scope and how it applies to nested functions to avoid confusion and unintended side effects. The scope determines where variables and functions can be accessed and where they are no longer valid or accessible.
