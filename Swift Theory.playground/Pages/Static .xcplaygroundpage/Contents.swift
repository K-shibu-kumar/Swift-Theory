///# Static and Global usage

///*In Swift, you can create both static and global properties to store values that remain constant throughout the execution of your application. Let's understand the differences between them:

///# Static Properties:
//Static properties are properties that belong to a specific type (class, struct, or enum) rather than instances of that type.
//They are defined using the static keyword for structs, classes and enums.
//Each type has its own copy of the static property, and it is shared among all instances of that type.
//Static properties are commonly used to store configuration values, shared resources, or constants that are specific to the type rather than individual instances.

//Example of a static property in a class:

struct Town {
    
    static let name = "Erangel" // this is a static type
    
    var citizens = ["Noxid", "Ghost"] // these are global
    var resources = ["Medkit": 30, "Painkiller": 60, "Bandaids": 240, "Adrenaline": 55, "Energy drinks": 135]
    
    func attack(){
        print("Squad is ready to deploy!")
    }
}
//Initialising a Struct
var myTown = Town()
// Accessing the struct
print(myTown.citizens)
print("\(myTown.citizens[0]) has \(myTown.resources["Bandaids"]!) Bandaids. ")
// editing the Struct
myTown.citizens.append("Mad King")
print(myTown.citizens)
print(myTown.citizens.count)



//Usage of the static property:

print(Town.name)
//Town.name?.append("New name")// Can't edit the Static constant
// We don't have to initialise the struct in order use the static value





///*Remember that using global properties should be done judiciously, as they can lead to potential code coupling and make maintenance more challenging in large projects. It's often better to encapsulate related constants and functions within a specific type using static properties and methods.

///*In summary, static properties are used to define properties that are shared among instances of a specific type, while global properties are defined at the module level and can be accessed from any part of the code within the same module. Both types of properties are valuable in different contexts, but it's essential to use them appropriately based on the design and requirements of your application.
