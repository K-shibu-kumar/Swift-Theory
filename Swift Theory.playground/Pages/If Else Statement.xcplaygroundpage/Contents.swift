///# If/ELSE Statement  (conditionals)


///*In Swift, the if-else statement is used for conditional branching. It allows you to execute different blocks of code based on whether a given condition is true or false.

//Here's the basic syntax of the if-else statement in Swift:
let condition = true

if condition {
    // Code to be executed if the condition is true
} else {
    // Code to be executed if the condition is false
}
///*The condition is an expression that evaluates to a Boolean value (true or false). If the condition is true, the code inside the if block will be executed, and if it's false, the code inside the else block will be executed.

//Here are some examples to illustrate how if-else statements work in Swift:

//Example 1 - Checking if a number is positive or negative:


let number = -5

if number >= 0 {
    print("The number is positive or zero.")
} else {
    print("The number is negative.")
}

//Example 2 - Checking if a person is eligible for voting:


let age = 18

if age >= 18 {
    print("You are eligible to vote.")
} else {
    print("You are not eligible to vote yet.")
}

//Example 3 - Checking multiple conditions using else if:


let score = 85

if score >= 90 {
    print("You got an A!")
} else if score >= 80 {
    print("You got a B.")
} else if score >= 70 {
    print("You got a C.")
} else {
    print("You need to improve your score.")
}

///*You can also use the if statement without an else block if you only need to execute code when a certain condition is met:

let isRaining = true

if isRaining {
    print("Remember to take an umbrella!")
}
///*Remember that the curly braces {} are required around the code blocks associated with if, else, and else if. However, if the block contains only one line of code, you can omit the curly braces:

//if condition
  //  statement
//else
 //   statement
///*But it's generally considered good practice to include the curly braces for readability and to avoid potential issues with nested statements.

 
///# Love calculator

func loveCalculator(){
    let LoveScore = Int.random(in: 0...100)
    if LoveScore > 80{ // checks if this statement is true. if true the body of code is executed. if false else is checked
        print("Love is Pure")
        // return : this means after this is done do not continue. just exit this func
    }
    if LoveScore > 40 && LoveScore <= 80 {
        print("It's like coke and mentos")
    }
    else if LoveScore <= 40 && LoveScore > 20 {
        print("you are doomed")
    }
    else{
        print("You'll Die Alone")
    }
}
loveCalculator()

func isLeap(year: Int) {
    var leap = "NO"
    //IF divisible by 4 with no remainders.
    if year % 4 == 0 {
        leap = "YES"
        //Is leap year, unless:
    }
    if year % 100 == 0 {
        leap = "NO"
        //Is not leap year, unless:
    }
    else if year % 400 == 0 {
        leap = "YES"
        //Is leap year.
    }
    print(leap)
}
isLeap(year: 2024)//Input year



