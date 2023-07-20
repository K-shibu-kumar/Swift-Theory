///# Combining Operators


///*In Swift, you can combine multiple operators to create more complex expressions. This allows you to build powerful and concise logic in your code. Some of the common ways to combine operators include:

///# Logical AND (&&): The logical AND operator returns true if both operands are true, otherwise, it returns false.

let age = 25
let hasLicense = true

if age >= 18 && hasLicense {
    print("You are eligible to drive.")
} else {
    print("You are not eligible to drive.")
}


///#Logical OR (||): The logical OR operator returns true if at least one of the operands is true, otherwise, it returns false.

let isWeekend = true
let isHoliday = false

if isWeekend || isHoliday {
    print("It's time to relax.")
} else {
    print("Back to work.")
}


///#Logical NOT (!): The logical NOT operator reverses the Boolean value of its operand.

let isSunny = true

if !isSunny {
    print("It's a cloudy day.")
} else {
    print("It's a sunny day.")
}


///#Combining Comparison Operators: You can use multiple comparison operators together to create complex conditions.

let temperature = 25

if temperature >= 20 && temperature <= 30 {
    print("The weather is pleasant.")
} else {
    print("The weather is not so pleasant.")
}


///#Combining Assignment and Arithmetic Operators: You can use arithmetic and assignment operators together to perform calculations and update values in a single step.

var count = 5
count += 2 // Equivalent to count = count + 2


///#Combining Optional Chaining and Nil Coalescing Operator: You can use optional chaining and the nil coalescing operator together to handle optional values safely.

let optionalName: String? = "John"
let greeting = "Hello, " + (optionalName ?? "Guest")


///*These are just a few examples of combining operators in Swift. You can use parentheses to control the order of evaluation when combining multiple operators. Understanding operator precedence is essential for writing correct and efficient code. Swift follows a specific order of evaluating operators based on their precedence levels. If in doubt, use parentheses to clarify the order of operations.
