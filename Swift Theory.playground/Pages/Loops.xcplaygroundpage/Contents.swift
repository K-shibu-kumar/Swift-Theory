///# Loops


///* In Swift, loops are used to execute a block of code repeatedly until a certain condition is met. Swift provides several loop structures to achieve this. The three main types of loops in Swift are:

///# For-In Loop:
///*The for-in loop is used to iterate over a sequence such as an array, a range of numbers, a string, or a collection. The loop will execute the code block for each element in the sequence.

let numbers = [1, 2, 3, 4, 5]

for number in numbers {
    print(number)
}


///# While Loop:
///*The while loop repeats a block of code as long as a certain condition is true.

var counter = 0

while counter < 5 {
    print(counter)
    counter += 1
}


///# Repeat-While Loop:
///*The repeat-while loop is similar to the while loop, but it checks the condition after the block of code has been executed. This guarantees that the loop is executed at least once.

var x = 0

repeat {
    print(x)
    x += 1
} while x < 5


///*In the above examples, each loop will print the numbers from 0 to 4. The for-in loop is used for iterating over an array, the while loop is used with a counter, and the repeat-while loop is used with a different counter, but the outcome is the same in all three cases.

///*You can use loops to perform various tasks such as iterating over arrays, performing actions until a condition is met, or implementing game loops in your iOS/macOS applications. Make sure to properly manage the loop conditions to avoid infinite loops.
