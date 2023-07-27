///# Static and Global usage

///*In Swift, you can create both static and global properties to store values that remain constant throughout the execution of your application. Let's understand the differences between them:

///# Static Properties:
//Static properties are properties that belong to a specific type (class, struct, or enum) rather than instances of that type.
//They are defined using the static keyword for structs, classes and enums.
//Each type has its own copy of the static property, and it is shared among all instances of that type.
//Static properties are commonly used to store configuration values, shared resources, or constants that are specific to the type rather than individual instances.

//Example of a static property in a class:

class MathUtils {
    static let pi = 3.14159
    static var counter = 0

    static func incrementCounter() {
        counter += 1
    }
}

//Usage of the static property:

let circleArea = MathUtils.pi * radius * radius
MathUtils.incrementCounter()



///# Global Properties:
//Global properties are variables or constants that are declared at the root level of a file or module.
//They are accessible from any part of the code within the same module.
//Global properties are useful when you want to share values across multiple types or files.

//Example of a global property:

let maximumItemCount = 100
var appVersion = "1.0"

//Usage of the global property:

if itemCount <= maximumItemCount {
    // Perform an action
}

print("App version: \(appVersion)")



///*Remember that using global properties should be done judiciously, as they can lead to potential code coupling and make maintenance more challenging in large projects. It's often better to encapsulate related constants and functions within a specific type using static properties and methods.

///*In summary, static properties are used to define properties that are shared among instances of a specific type, while global properties are defined at the module level and can be accessed from any part of the code within the same module. Both types of properties are valuable in different contexts, but it's essential to use them appropriately based on the design and requirements of your application.
