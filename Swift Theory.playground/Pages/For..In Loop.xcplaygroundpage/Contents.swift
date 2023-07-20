///# Loop


///*In Swift, the for-in loop is used to iterate over a sequence, such as an array, a range, a dictionary, or a string. It simplifies the process of iterating through each element or key-value pair without the need for traditional index-based looping.

//The basic syntax of the for-in loop in Swift is as follows:

//for item in sequence {
//    // Code to be executed for each item in the sequence
//}

//Here are some examples of using for-in loops in Swift:

///# Iterating over an array:

let numbers = [1, 2, 3, 4, 5]

for number in numbers {
    print(number)
}


///# Iterating over a range:

for i in 1...5 {
    print(i)
}


///# Iterating over a dictionary:

let fruits = ["apple": 2, "orange": 3, "banana": 1]

for (fruit, quantity) in fruits {
    print("I have \(quantity) \(fruit)s.")
}


///# Iterating over a string:

let message = "Hello, Swift!"

for character in message {
    print(character)
}


///# Using the where clause:

let numbers0 = [1, 2, 3, 4, 5]

for number in numbers0 where number % 2 == 0 {
    print("\(number) is even.")
}

///*In the examples above, the for-in loop iterates over the elements in the numbers array, the values in the range 1...5, the key-value pairs in the fruits dictionary, and the characters in the message string, respectively.

///*The for-in loop provides a concise and expressive way to perform repetitive tasks in Swift, and it is generally preferred over traditional C-style for loops when iterating over collections. It automatically handles the iteration process and avoids the need for explicit index management, making your code safer and less error-prone.

