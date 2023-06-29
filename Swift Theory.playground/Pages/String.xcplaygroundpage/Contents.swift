// String


/* "Hello World" is a string. String statements are separated by ; */


let ALPHABETS = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

// this is "String Interpolation"  \()
print("No.Of \(ALPHABETS.count) Alphabets")  /* a var or let can be called inside interpolation*/
//can ser interpolation as an output of a task. or

// this is "String concatenation"    +
print("me" + "you")

let combine : String = "me" + "you"  /* Declared a constant named 'combine' of data type 'string' and gave it a value of "me" + "you" */
print(combine)
/* this combines the results. Can create sets of values from an array. Refer to password generator example */

//"String Literal"     "", "", "\()"
print("No.Of Alphabets is ", "hai",  "\(ALPHABETS.count)")

//String Optional
let A: String? = "An APPLE" /* this is string optional . In this case it can hold a value of'nill'*/
print(A) // the result is printed as optional
print(A!) // we are saying is that we checked for a nill value and it is safe to sent over the value. ! is called unwrapping
