///# SWITCH statements

///*In Swift, the switch statement is a powerful control flow construct used to match a value against multiple possible patterns. It provides an elegant way to handle different cases based on the value of a variable or expression.

//The basic syntax of the switch statement in Swift is as follows:

//switch valueToCheck {
//case pattern1:
//    // Code to execute if valueToCheck matches pattern1
//case pattern2, pattern3:
//    // Code to execute if valueToCheck matches either pattern2 or pattern3
//default:
    // Code to execute if none of the above cases are matched
//}

//Here's an example of a simple switch statement:

let day = "Wednesday"

switch day {
case "Monday":
    print("It's the start of the week.")
case "Tuesday", "Wednesday", "Thursday":
    print("It's the middle of the week.")
case "Friday":
    print("It's Friday, time to celebrate!")
default:
    print("It's the weekend!")
}
//In this example, the switch statement is used to check the value of the day variable and execute different code blocks based on its value.

///*Some key points to note about Swift's switch statement:

///# No Fall-through: Unlike in some other programming languages, Swift's switch statement doesn't fall through to the next case by default. Once a matching case is found and executed, the switch block exits. If you want fall through behavior, you must explicitly use the fall through keyword.


///# Ranges and Tuples: Swift's switch statement can match against ranges and tuples in addition to individual values.

let score = 85

switch score {
case 0..<60:
    print("You failed the exam.")
case 60..<80:
    print("You got a C or a B.")
case 80...100:
    print("You got an A!")
default:
    print("Invalid score.")
}


///# Value Binding: You can use value binding to capture the matched value of the switch statement into a new constant or variable.

let point = (2, 3)

switch point {
case (let x, let y):
    print("The point is at (\(x), \(y)).")
}


///# Where Clause: You can use the where keyword to add additional conditions to a case.

let number = 15

switch number {
case let x where x % 2 == 0:
    print("The number \(x) is even.")
case let x where x % 2 != 0:
    print("The number \(x) is odd.")
default:
    print("Invalid number.")
}


///*The switch statement is a versatile and expressive construct in Swift, allowing you to handle various scenarios and making your code more readable and maintainable.


//Example
func loveCalculator1(){
    var loveScore = Int.random(in: 0...100)
    switch loveScore{
    case 80...100 :
        print("MadeInHeaven")
    case 50..<80 :
        print("StillCanMakeItWork")
    case 30..<50 :
        print("YouAreDoomed")
    case ..<30 :
        print("JustDie")
    default:
        print("Nooooooob")
    }
}
loveCalculator1()


func dayOfTheWeek(day: Int) {
    
    switch day {
    case 1:
        print("Sunday")
    case 2:
        print("Monday")
    case 3:
        print("Tuesday")
    case 4:
        print("Wednesday")
    case 5:
        print("Thursday")
    case 6:
        print("Friday")
    case 7:
        print("Saturday")
        
    default:
        print("number is out of scope")
    }
    
    print(day)
    
}
dayOfTheWeek(day: Int.random(in: 1...7))
