///# Comparison Operators

///*In Swift, comparison operators are used to compare values and produce Boolean results (true or false). These operators are essential for constructing conditional statements like if, while, and switch. Here are the comparison operators available in Swift:

////# Equality Operator (==): Checks if two values are equal.

let a = 5
let b = 10

if a == b {
    print("a is equal to b")
} else {
    print("a is not equal to b")
}


///# Inequality Operator (!=): Checks if two values are not equal.

let x = 3
let y = 3

if x != y {
    print("x is not equal to y")
} else {
    print("x is equal to y")
}


///# Greater Than Operator (>): Checks if the value on the left is greater than the value on the right.

let num1 = 15
let num2 = 10

if num1 > num2 {
    print("num1 is greater than num2")
} else {
    print("num1 is not greater than num2")
}


///# Less Than Operator (<): Checks if the value on the left is less than the value on the right.

let m = 7
let n = 12

if m < n {
    print("m is less than n")
} else {
    print("m is not less than n")
}


///# Greater Than or Equal To Operator (>=): Checks if the value on the left is greater than or equal to the value on the right.

let p = 25
let q = 20

if p >= q {
    print("p is greater than or equal to q")
} else {
    print("p is neither greater than nor equal to q")
}


///# Less Than or Equal To Operator (<=): Checks if the value on the left is less than or equal to the value on the right.

let r = 30
let s = 35

if r <= s {
    print("r is less than or equal to s")
} else {
    print("r is neither less than nor equal to s")
}

///*Remember that comparison operators can be used with various data types, such as integers, floating-point numbers, characters, strings, and even custom types that conform to the Equatable protocol.
