import Foundation
//Functions



//built in functions

/* In Swift, standard library functions are the built-in functions that can be used directly in our program. For example,
 
 print() - prints the string inside the quotation marks
 sqrt() - returns the square root of a number
 pow() - returns the power of a number
 These library functions are defined inside the framework. And, to use them we must include the framework inside our program.
 
 For example, sqrt() and pow() are defined inside the Foundation framework.
 
 */
import Foundation
// sqrt computes the square root
var squareRoot = sqrt(25)

print("Square Root of 25 is",squareRoot)

// pow() comptes the power
var power = pow(2, 3)

print("2 to the power 3 is",power)

/* Benefits of Using Functions
 1. Code Reusable - We can use the same function multiple times in our program which makes our code reusable. For example,
 
 2. Code Readability - Functions help us break our code into chunks to make our program readable and easy to understand.
 
 */
func greetings(){
    print("Hello")
}
greetings() /*creating a
             func grettings(){body of the func
             }
             Called the function to execute the codes inside
             gretings()
             */

/* Body of the func contains a set of codes. First declare the function, then trigger it by calling out the func name whenever we need */



//Nesting and Scope



/* Creating a func inside another func is called nesting. Each time nesting a new func , trigger the same func. when the original func is triggered the nested func will also get triggered. That is called "scope" */

func greetings1(){
    print("Hello")
    print("World")//body of function can hold many sets of codes to executed later
    
    func greetings2(){
        print("Hello again")
    }
    
    greetings2() // can't call out nested func outside the scope.
}
greetings1() // the func can be triggered in multiple occasions.
greetings1()
greetings1()



//Functions with Parameter and Argument



/* input is a variable without value. So decalre a value
 Func(nameOfInput: valueOfInput) like declaring a variale
 Func(Parameter: Argument)*/

func greetings3(whoToGreet: String){
    print("Hello \(whoToGreet)")
}
greetings3(whoToGreet:"Dixon")
/*whoToGreet is the "Parameter" and String is the "Argument" of the Func
 Prameter is just like declaring a name in a Variable.
 Argument is like assigning the value*/
greetings3(whoToGreet: "Noxid")
/*we can call out the func multiple times ,and assign values to different inputs*/

func divide(n1: Int, n2: Int) {
    let decimalN1 = Double(n1) // here we took the constant n1's value which can't be reverted, and added converted it to a Double value and asigned it to a new constant decimalN1
    let decimalN2 = Double(n2)
    print(decimalN1 / decimalN2)
}
divide(n1: 4, n2: 5)/* change an Int to DOuble*/



//Function with default Argument



func addNumbers( a: Int = 7,  b: Int = 8) {
    var sum = a + b
    print("Sum:", sum)
}

// function call with two arguments
addNumbers(a: 2, b: 3)

// function call with one argument
addNumbers(a: 2)

// function call with no arguments
addNumbers()



//Internal Parameter &
//External Parameter (also known as Argument Label)



/*In Swift, functions accept values ​​to use with parameters. Parameters are called external and internal.
 
 Internal Parameter Names are used in the body of the function
 
 External Parameter Names are used when calling the function
 
 
 The naming in the default created function are used as both internal and external names. */

func type1(name: String, lastname: String){
    print("Welcome \(name) \(lastname)!")
}

type1(name: "Noxid", lastname: "Here")
//Another option, we can define Internal and External names differently.


/* The value specified externally as CustomerName is set to the variable name; The value specified as CustomerLastName is assigned to the variable lastname. */

func type2(CustomerName name: String, CustomerLastName lastname: String){
    print("Welcome \(name) \(lastname)!")
}

type2(CustomerName: "Noxid", CustomerLastName: "Here")
/* There is a final option, external naming is not used. When calling a function, parameters are written in parentheses in order.
 
 
 No name is specified when the function is called. Function also assigns the given parameters respectively to the internal parameters. */

func type3(_ name: String, _ lastname: String){
    print("Welcome \(name) \(lastname)!")
}

type3("Noxid", "Here")




//Functions with OUTPUT



/* Function Return Values
 A function may or may not return value. If we want our function to return some value, we use the return statement and return type. For example, */

func greetings (name : String) -> Bool {
    if name == "Dixon" || name == "Noxid" {
        return true
    } else {
        return false
    }
    
}

var doorShouldOpen = greetings(name: "Dixon")
print(doorShouldOpen)
//In the above example, we have created a function named gretings(). The function checks the name is in the list.

//return true or false
//The returned value is stored in the doorShouldOpen variable.




// Func as an Input of another func

let array = [6,3,2,8,9,3] // we want to add 1 to each of the items in this array

//Using func as an input:-

func addOne (n1: Int) -> Int { // this func will be the input
    return n1 + 1
}

array.map(addOne) // here .map() is a inbuilt func of swift. which takes addOne() method as an input parameter.

print(array.map(addOne))

