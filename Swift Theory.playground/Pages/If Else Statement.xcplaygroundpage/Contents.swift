// If/ELSE Statement  (conditionals)


/* using the below 'comparison operators' we can compare the RHS and LHS of a statement
 == is equal to
 != is not equal to
 > is greater than
 < is less than
 >= greater than or equal to
 <= less than or equal to
 
 the conditions can be combined by the given
 && AND
 || OR
 ! NOT
 
 Expressions:
 / :- Division
 * :- Multiplication
 + :- Addition
 - :- Substraction
 */
//Example   if the condition is 'TRUE' then the body of codes is executed. incase False then it checks next condition and so on...
/* in if statement SWIFT go through each conditions to check and execute the code */


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



