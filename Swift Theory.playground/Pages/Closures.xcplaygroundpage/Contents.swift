
// Closures

// Syntax expression
//{(parameters) -> return type in
//    statements //these are the func the closure is going to perform
//}


/*
 Closures are self-contained blocks of functionality that can be passed around and used in your code. Which are anonymous and don't have a name
 
 Closures can be pass around as an Input and output parameter of a func.
 
 Closures is a block of codes inside a sets of curly braces. Which can be assigned to a var or let too.
 
 In Swift $0 :- 1st Parameter, $1 :- 2nd parameter , so on and so forth...
 Closures can have anonymous parameter names in swift.
 
 In swift if last parameter is a closure :- we can remove the parameter name,
 and close the input bracket and let the closure simply trailing at the end.
 */

// Example:-

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1, n2) //2 outputs
}


//func multiply(no1: Int, no2: Int) -> Int { // see the conversion
//    return no1 * no2
//}
let result = calculator(n1: 2, n2: 3) {$0 * $1} //In swift if last parameter is a closure :- we can remove the parameter name, and close the input bracket and let the closure simply trailing at the end.

print(result)



//Converting func multiply in to Closures

/*
 
 func multiply(no1: Int, no2: Int) -> Int {
 return no1 * no2
 }
 
 into
 
 1. Closures are anonymous, They don't need a name, So
 Remove the func keyword and it's name, added 'in' after the output datatype.
 Now this is a closure.
 {(no1: Int, no2: Int) -> Int in
 return no1 * no2 }
 
 2.Because of type inference,
 Remove the explicit inference of data types . Because so the compiler can infer.
 {(no1, no2) in
 return no1 * no2 }
 
 3. Because there is a multiplication expression, we can remove the return keyword. And the compiler know an output is expected
 {(no1, no2) in no1 * no2 }
 
 4. In swift closures have the ability to provide anonymous parameter names.
 $0 :- 1st parameter, $1 :- 2nd parameter
 {($0, $1) in $0 *$1 } here is two input parameters, with an expression to carry out later as output parameter. Instead we can write
 {1st parameter * 2nd parameter}
 ie;
 {$0 * $1}
 
 5. In swift if last parameter is a closure :- we can remove the parameter name,
 and close the input bracket and let the closure simply trailing at the end.
 */


//Advantage

/*
 We can have a succinct code. Rather than a large expressive syntax
 
 */

// Disadvantage

/*
 Readability will reduced incase the reader isn't aware of the closure concept
 */




// Another Example

let array = [6,3,2,8,9,3] // we want to add 1 to each of the items in this array

//Using func as an input:-

func addOne (n1: Int) -> Int {
    return n1 + 1
}



array.map{$0 + 1}// here .map() is a inbuilt func of swift. which takes addOne() method as an input parameter.

// When calling a method inside a closure from the same class. must add .self before 
