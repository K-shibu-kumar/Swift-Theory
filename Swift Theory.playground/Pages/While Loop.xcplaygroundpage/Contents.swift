///# While Loop


///*In Swift, a while loop allows you to execute a block of code repeatedly as long as a certain condition is true. The basic syntax of a while loop in Swift is as follows:

//  while condition {
//      // Code to be executed repeatedly while the condition is true
//  }

//Here's how it works:

///*The condition is a Boolean expression that is evaluated before each iteration of the loop. If the condition is true, the code inside the loop will be executed. If the condition is false from the beginning, the code inside the loop will never be executed.
///*The code block inside the curly braces {} is the body of the loop. It contains the code that will be executed repeatedly as long as the condition is true.
///*Once the code inside the loop is executed, the condition is evaluated again. If the condition is still true, the loop will execute the code block again, and this process continues until the condition becomes false.


//Here's a simple example of a while loop that counts from 1 to 5:

var counter = 1

while counter <= 5 {
    print(counter)
    counter += 1
}

///*In this example, the while loop continues as long as counter is less than or equal to 5. Inside the loop, we print the value of counter and then increment it by 1 in each iteration.

///*It's essential to be cautious with the while loop, as it will continue executing indefinitely if the condition never becomes false. If there's a risk of creating an infinite loop, you should make sure to include logic to break out of the loop under certain conditions to avoid unexpected behaviour.



// Example:

import Foundation

var now = Date().timeIntervalSince1970
let oneSecFromNow = now + 1

while now < oneSecFromNow {
    now = Date().timeIntervalSince1970
    print("Waiting...")
}
