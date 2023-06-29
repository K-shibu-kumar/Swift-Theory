// Guard Statement


/*

In Swift, we use the guard statement to transfer program control out of scope when certain conditions are not met.

The guard statement is similar to the if statement with one major difference. The if statement runs when a certain condition is met. However, the guard statement runs when a certain condition is not met.


//Syntax of guard Statement


guard expression else {
  // statements
  // control statement: return, break, continue or throw.
}
 
 Here, expression returns either true or false. If the expression evaluates to

 true - statements inside the code block of guard are not executed
 false - statements inside the code block of guard are executed
 */




//Example: Swift Guard Statement
var i = 2

while (i <= 10) {
    
  // guard condition to check the even number
  guard i % 2 == 0 else {
   
     i = i + 1
    continue
  }

  print(i)
  i = i + 1
}
/*
 In the above example, we have used the guard statement to check if the number is even or odd. Notice the line,
 
 guard i % 2 == 0 else {...}
 Here, if i is
 
 odd - , i % 2== 0 evaluates to false. And, the code inside the guard is executed.
 even - , i % 2 == 0 evaluates to true. And, the code inside the guard is skipped.
 Hence, we only get the even numbers as our output.
 
 We have used the continue statement inside guard to transfer the control to the next iteration of the loop.
 
 Note: The use of control statements like continue, break, etc. is compulsory. Otherwise, we will get an error: 'guard' body must not fall through, consider using a 'continue' or 'return' to exit the scope.
 
 guard Statement Inside a Function
 The guard statement is generally used with functions.
 
 
 
 */
