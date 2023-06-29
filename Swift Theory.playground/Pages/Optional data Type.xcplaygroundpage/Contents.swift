// Optional data Type

var myOptional: String? // this is not a String data type, this is a StringOptional data type


// Force Unwrapping: -

myOptional = "Dixon"

print(myOptional!) // this is force un wrapping. After forcefully telling SWIFT there isn't any nil value, if swift finds out a nil value the app will crash 'runtime'




// Check for nil value: -

myOptional = "nil"
if myOptional != nil {
    let text: String = myOptional! // Checking for nil value and force Unwrapping it.
    let text2: String = myOptional!
    print(text)
    print(text2)
} else {
    print("myOptional was found to be nil.")
    
}




// Optional Binding: -
//If let
myOptional = "Dixon001"

if let safeOptional = myOptional {
    let text: String = myOptional!
    let text2: String = myOptional!
    // safeOptional is a temp var which holds the value of myOptional, only if it contains any value. if it's nil the else statement is printed out. this is called an "OPTIONAL BINDING" of optional data type. this is an inbuilt swift method.
    print(text)
    print(text2)
    
} else {
    print("myOptional was found to be nil.")
}






// Nil Coalescing Operator: -

myOptional = nil

let text: String = myOptional ?? "this is the default value"

print(text)//here the Nil Coalescing Operator ie; '??' is used and a default value is provided.


myOptional = "Dixon02"

let text2: String = myOptional ?? "this is the default value"

print(text2)

// Optional Chaining: -

// this is used if a Struct or Class is Optional. To access the properties and methods of that optional Struct of Class. By using the chaining snippet ie; '?' , first check if the Struct or Class is not nil.

struct MyOptional {
    var property = 123
    func method() {
        print("I am the Struct's Method ")
    }
}

var myOptionalStruct: MyOptional? // setting the Struct as an OptionalStruct
myOptionalStruct = MyOptional() // initialising the Struct or (capturing the Struct)
print(myOptionalStruct?.property)
myOptionalStruct?.method()

myOptionalStruct = nil
print(myOptionalStruct?.property) // without the binding the code will break
myOptionalStruct?.method()

