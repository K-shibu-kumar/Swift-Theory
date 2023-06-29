// Variable

var Dxn : Int = 8891117277 /*Int is the data type. in this case var Dxn can't hold any other data type other than Int in the future*/
print(Dxn)
/*variable can hold 'one' data types at a time. in the case of we doesn't declare the type of value, swift will infer it for us {option key+ tap}*/
var variableName = 42
print(variableName)
print("the value of variableName is \(variableName)")
/*for a var "" double quote is not needed*/

var a = 5
var b = 8
/*var c = a //c = 5
 a = b     //a = 8
 b = c     //b = 5*/

print("a: \(a)")
print("b: \(b)")




//Constants


let pi : Double = 3.14159265359

print(pi)
/* the point unless the value isn't going o change in the future always prefer a constant instead of a variable for memory management and efficiency*/
//when you need to connect two results together use a create a var or let


// Type inference
/*
 Incase we didn't explicitly declare a datatype to a var,
 Swift will automatically infer a data type based on to the data we assigned to a var. It's called Type Inference.
 */
