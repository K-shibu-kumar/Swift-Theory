///# Optional data Type


///*In Swift, an optional data type is used to represent the presence or absence of a value. It allows you to handle situations where a value might be missing, indicating that the variable or property doesn't have a valid value or hasn't been initialised yet.

///*An optional is defined by appending a question mark (?) to the type declaration, turning the original type into an optional type. For example:

var age: Int? // age is an optional Int
var name: String? // name is an optional String

///#Here are some key points about optionals:

///*An optional variable can either hold a value of the specified type or be nil, which represents the absence of a value.
///*When you declare an optional variable without providing an initial value, Swift automatically sets it to nil until you assign a value to it.
///*To use the value of an optional, you must "unwrap" it to safely access its underlying value. Attempting to use the value of an optional without unwrapping it could result in a runtime error if the optional is nil.
///*There are several ways to safely unwrap an optional, including optional binding, optional chaining, and using the nil-coalescing operator (??).





///# Force Unwrapping: -

///*Force unwrapping in Swift is a way to access the underlying value of an optional forcibly. When you declare a variable or property as optional (by appending a question mark ? to its type), you must safely unwrap it before using its value. However, when you are absolutely certain that the optional contains a value and won't be nil, you can use the exclamation mark ! to force unwrap it and access its value directly.

//Here's an example of force unwrapping:

var name0: String? = "John"

let unwrappedName = name0! // Force unwrap the optional variable "name"
print("Name is \(unwrappedName)")
// Output: Name is John
///*In this example, we have an optional string variable name with an initial value of "John." We use name! to force unwrap it and assign its value to the constant unwrappedName. Since we are certain that name has a value, force unwrapping allows us to access the underlying value directly.

//However, using force unwrapping comes with some risks:

///*If the optional is nil when you force unwrap it, your program will crash with a runtime error. Always ensure that you are confident the optional has a value before using force unwrapping.
///*Force unwrapping should be used sparingly and only when you are certain that the optional will have a value at that point in the code. In most cases, it's better to use optional binding or optional chaining to safely unwrap optionals and handle the case when the value is nil.
//Example with optional binding (safer approach):

var name01: String? = "John"

if let unwrappedName = name01 {
    print("Name is \(unwrappedName)")
} else {
    print("Name is not available")
}
// Output: Name is John
///*Using optional binding allows you to safely unwrap the optional and handle both the case where the value exists and the case where it is nil.

//*In summary, while force unwrapping can be useful in certain situations, it should be used with caution to avoid unexpected runtime crashes. It's generally better to follow safer practices like optional binding and optional chaining whenever possible to handle optional values more gracefully and prevent crashes in your Swift code.



///# Check for nil value: -

var name02: String? = "John"

if name02 != nil {
    let unwrappedName1: String = name02! // Checking for nil value and force Unwrapping it.
    print(unwrappedName1)
} else {
    print("Name is not available.")
}
// Output: Name is John



///# Optional Binding: -

var name2: String? = "John"

if let unwrappedName = name2 {
    print("Name is \(unwrappedName)")
} else {
    print("Name is not available")
}
// Output: Name is John







///# Nil Coalescing Operator: -

///*The nil-coalescing operator (??) is a useful operator in Swift that provides a concise way to handle optionals and provide a default value if an optional is nil. It allows you to provide a fallback value for an optional in case it does not contain a value.

///#The syntax of the nil-coalescing operator is:

//optionalValue ?? defaultValue
//Here's how it works:

///*If optionalValue contains a value (i.e., it is not nil), the expression optionalValue ?? defaultValue evaluates to the value of optionalValue.
///*If optionalValue is nil, the expression optionalValue ?? defaultValue evaluates to defaultValue.
//Example:

var name3: String? = "John"

let unwrappedName3 = name3 ?? "Unknown"
print("Name is \(unwrappedName3)")
// Output: Name is John

///*In this example, we have an optional name that has a value "John." The nil-coalescing operator is used to provide a default value of "Unknown" in case name is nil. Since name has a value, the expression evaluates to "John," and the output is "Name is John."

//Now let's see an example where the optional is nil:


var name4: String? = nil

let unwrappedName4 = name4 ?? "Unknown"
print("Name is \(unwrappedName4)")
// Output: Name is Unknown

///*In this case, the optional name is nil, so the expression name ?? "Unknown" evaluates to "Unknown," and the output is "Name is Unknown."

///*The nil-coalescing operator is a convenient way to handle optionals and provide default values, especially when dealing with user input or data that might be missing. It helps prevent unexpected crashes by providing a safe fallback value when the optional is nil. Use it judiciously to make your code more robust and easier to read.






///# Optional Chaining: -


///*Optional chaining in Swift is a powerful feature that allows you to safely access properties, methods, and subscripts of an optional without explicitly unwrapping it. It provides an elegant and concise way to work with optionals, especially when you need to access nested properties or call methods on an optional value that might be nil.

///#The syntax for optional chaining is the question mark (?) placed after an optional value:


//optionalValue?.property
//optionalValue?.method()
//optionalValue?[index]

//Here's how optional chaining works:

///*If optionalValue contains a value (i.e., it is not nil), the optional chaining expression will continue to access the property, call the method, or access the subscript.
///*If optionalValue is nil, the entire optional chaining expression will return nil, and no further operation will be performed.
//Example with Properties:


struct Address {
    var city: String
    var postalCode: String
}

struct Person {
    var name: String
    var address: Address?
}

let person1 = Person(name: "John", address: Address(city: "New York", postalCode: "10001"))
let person2 = Person(name: "Alice", address: nil)

let city1 = person1.address?.city // "New York"
let city2 = person2.address?.city // nil

///*In this example, we have a Person struct with an optional address property of type Address?. We use optional chaining to access the city property of the address property. For person1, which has a non-nil address, city1 will be "New York." For person2, which has a nil address, city2 will be nil.

//Example with Methods:


class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

var calculator: Calculator? = Calculator()

let result = calculator?.add(5, 10) // 15
///*In this example, we have a Calculator class with an add method. We use optional chaining to call the add method on the optional calculator. If calculator is not nil, the method will be called, and result will contain the result of the addition (15). If calculator is nil, the entire optional chaining expression will return nil, and result will be nil.

///*Optional chaining is a safer alternative to force unwrapping optionals, as it gracefully handles the case when the optional is nil and avoids runtime crashes. It is particularly useful when working with nested optionals or when you are unsure whether an optional contains a value. It enables you to write more robust and less error-prone Swift code.

