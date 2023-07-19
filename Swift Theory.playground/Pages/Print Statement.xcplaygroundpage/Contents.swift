///# Print Statement


//The syntax:  of the print statement is straightforward:

//print(item1, item2, item3, ..., separator: separator, terminator: terminator)

///*item1, item2, item3, and so on: These are the items or values you want to display on the console. You can pass multiple items, and they will be separated by a space by default.
///*separator (optional): This parameter allows you to specify a custom separator between the items. By default, it is set to a single space (" ").
///*terminator (optional): This parameter lets you define what should be printed after the items. By default, it is set to a new line ("\n").



// Here are some examples of using the print statement:

let name = "John"
let age = 30

print("Hello, World!") // Output: Hello, World!
print("My name is", name, "and I am", age, "years old.")
// Output: My name is John and I am 30 years old.

// Using a custom separator and terminator
print("Apples", "Oranges", "Bananas", separator: ", ", terminator: ".")
// Output: Apples, Oranges, Bananas.


///*In addition to printing simple text and variable values, you can also use string interpolation to embed the values of variables or expressions directly into the string:

let x = 10
let y = 5

print("The sum of \(x) and \(y) is \(x + y).")
// Output: The sum of 10 and 5 is 15.


///*Using print is an essential tool for developers to understand what's happening within their code and to provide useful information during development and testing. However, for production-level logging and more advanced debugging, it's often better to use more sophisticated logging frameworks or techniques.
