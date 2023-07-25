///# Repeat-While Loop


///*In Swift, a repeat-while loop is similar to a while loop but with one key difference: the condition is evaluated after the loop body has executed, ensuring that the loop body runs at least once. The basic syntax of a repeat-while loop in Swift is as follows:

//repeat {
//    // Code to be executed
//} while condition

//Here's how it works:

///*The code block inside the curly braces {} is the body of the loop. It contains the code that will be executed at least once.
///*Once the code inside the loop is executed, the condition is evaluated. If the condition is true, the loop will execute the code block again, and this process continues until the condition becomes false.
///*If the condition is false from the beginning, the loop will still execute the code block at least once before terminating.

//Here's an example of a repeat-while loop that counts from 1 to 5:

var counter = 1

repeat {
    print(counter)
    counter += 1
} while counter <= 5

///*In this example, the loop starts by printing the value of counter and then increments it by 1. The loop continues as long as counter is less than or equal to 5.

///*The main difference between a while loop and a repeat-while loop is the order of evaluation of the condition. The while loop evaluates the condition first and may not execute the loop body if the condition is initially false. In contrast, the repeat-while loop guarantees the execution of the loop body at least once before evaluating the condition.
