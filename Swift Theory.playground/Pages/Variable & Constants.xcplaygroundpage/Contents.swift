///# Variables and Constants


///*In Swift, variables and constants are used to store and manage data. They allow you to give names to values and refer to them throughout your code. However, there is a fundamental difference between variables and constants:


///# Variables:

///*Declared using the var keyword.
///*Mutable: Their values can be changed after they are initialised.
///*You must provide an initial value at the time of declaration, or you can initialise them later in your code.
///*You can reassign a new value to a variable using the assignment operator (=).
//Example of a variable:

var age: Int = 30
age = 31 // You can change the value of the variable "age."


///#Constants:

///*Declared using the let keyword.
///*Immutable: Once initialised, their values cannot be changed.
///*You must provide an initial value at the time of declaration, and you cannot change it later in your code.
///*Constants are useful when you have a value that should remain constant throughout the program's execution.
//Example of a constant:

let pi: Double = 3.14159
// pi = 3.14 // Error: You cannot reassign a new value to a constant "pi."
///*When choosing between variables and constants, consider the following guidelines:

///*Use variables when the value needs to be modified or updated during the program's execution.
///*Use constants when the value should remain the same and not change.
///*Swift encourages the use of constants wherever possible to make code more predictable and easier to reason about. If you find that a value needs to change, you can start with a constant and then change it to a variable if necessary.

//Example of starting with a constant and later changing it to a variable:

let maxAttempts = 5

// Later in the code...
var currentAttempt = 1
// Perform an operation...
currentAttempt += 1 // This is why we use a variable, as the "currentAttempt" changes during the program's execution.
///*By using variables and constants appropriately, you can create code that is more robust and maintainable, making it easier to understand the intent and behaviour of your Swift programs.
