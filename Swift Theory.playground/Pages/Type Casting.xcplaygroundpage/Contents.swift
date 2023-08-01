///# Type Casting

///*In Swift, type casting allows you to check the type of an instance and/or treat it as a different class, subclass, or protocol type. There are two main forms of type casting in Swift: "as" and "is" operators.

///# "as" Operator:

//The "as" operator is used for explicit type casting, where you specify the target type you want to convert the instance into. There are two types of "as" operators:
//a. as? (Conditional downcasting): It attempts to convert the instance into the specified type. If the conversion succeeds, it returns an optional value with the converted type. If the conversion fails, it returns nil.

//b. as! (Forced downcasting): It forcibly converts the instance into the specified type. If the conversion fails at runtime, it results in a runtime error (crash).

//Here's how you can use the "as" operator:

// Example classes
class Animal {}
class Dog: Animal {}
class Cat: Animal {}

let animal: Animal = Dog()

// Conditional downcasting (as?)
if let dog = animal as? Dog {
    print("It's a dog!")
} else {
    print("It's not a dog.")
}

// Forced downcasting (as!)
let dog = animal as! Dog
print("It's definitely a dog!")


///# "is" Operator: Is used for type checking

///*The "is" operator is used for checking the type of an instance without performing a type conversion. It returns a boolean value indicating whether the instance is of the specified type.

let anotherAnimal: Animal = Cat()

if anotherAnimal is Dog {
    print("It's a dog!")
} else if anotherAnimal is Cat {
    print("It's a cat!")
} else {
    print("It's something else.")
}


///*Type casting is useful when you work with collections of different types or when you want to interact with objects that conform to shared protocols without knowing their exact type. Always use "as?" when the type conversion might fail to avoid runtime crashes, unless you are absolutely sure the conversion will succeed, in which case you can use "as!".
