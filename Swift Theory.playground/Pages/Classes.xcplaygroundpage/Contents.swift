import Foundation
///# Classes



///*In Swift, a class is a reference type that enables you to define custom data types to encapsulate data and behaviour together. Unlike structures (which are value types), classes have reference semantics, meaning that when you assign a class instance to a new variable or pass it as an argument to a function, you are actually passing a reference to the same object in memory. Classes are used for creating more complex data models, inheritance, and implementing object-oriented programming principles.

//Here's the basic syntax for defining a class in Swift:

class MyClass {
    // Properties (variables and constants)
    var property1: String//DataType
    var property2: Int//DataType
    
    // Initialiser (optional)
    init(property1: String , property2: Int) {
        self.property1 = property1
        self.property2 = property2
    }
    
    // Methods (functions)
    func myMethod() {
        // Code for the method
    }
}
//In the class definition:

///* class: Keyword used to define a class.
///* MyClass: The name of the class. By convention, class names should start with an uppercase letter.
///* property1, property2: Properties of the class. Properties define the data that the class will hold.
///* DataType: The data type of each property.
///* init: An optional initialiser that allows you to set initial values for the properties.

// Here's an example of a simple class representing a person:

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

//You can create instances of a class and access its properties and methods:

let personA = Person(name: "Alice", age: 30)
let personB = Person(name: "Bob", age: 25)

print("Person A: \(personA.name), \(personA.age) years old.")
print("Person B: \(personB.name), \(personB.age) years old.")

personA.sayHello()
personB.sayHello()


///* Classes can have methods, initialisers, and can inherit from other classes (single inheritance) to form a class hierarchy. Additionally, they can conform to protocols to provide additional functionality. Unlike structures, which are passed by value, classes are passed by reference, and multiple references can point to the same object in memory. Therefore, you need to be cautious about managing memory and avoiding strong reference cycles when working with classes.

///*Classes are a fundamental concept in object-oriented programming and provide a powerful tool for building complex and maintainable applications in Swift.



///# Example

class Town {
    let name = "Erangel"
    var citizens = ["Noxid", "Ghost"] // this is a property of the struct
    var resources = ["Medkit": 30, "Painkiller": 60, "Bandaids": 240, "Adrenaline": 55, "Energy drinks": 135]
    
    func attack(){
        print("Squad is ready to deploy!")// this is called a Method. func inside a struct
    }
}

///*Initialising a Class
var myTown = Town()
///* Accessing the Class
print("\(myTown.citizens[0]) has \(myTown.resources["Bandaids"]!) Bandaids. ")
///* Editing the Class
myTown.citizens.append("Mad King")
print(myTown.citizens) //or
print(myTown.citizens.count)// counting the elements
///* Func associated with a Struct or Class , is called a Method
myTown.attack()


///# Classes with initialiser

class Town1 {
    let name: String
    var citizens: [String]
    var resources: [String : Int]
    
    init (name: String, citizens: [String], resources: [String : Int]) {
        
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func attack(){
        print("Squad is ready to deploy!")// this is called a Method. func inside a struct
    }
}

var myTown1 = Town1(name: "Erangel", citizens: ["Noxid", "Ghost"], resources: ["Medkit": 30, "Painkiller": 60, "Bandaids": 240, "Adrenaline": 55, "Energy drinks": 135])


print("\(myTown1.citizens[0]) has \(myTown1.resources["Bandaids"]!) Bandaids. ")

myTown1.citizens.append("Mad King")
print(myTown1.citizens)
myTown1.attack()


///# Superclasses and Inheritance

///* In Swift, inheritance is a fundamental feature of object-oriented programming that allows you to create a new class based on an existing class. The existing class is called the "superclass" or "base class," and the new class is called the "subclass" or "derived class." The subclass inherits the properties and methods of its superclass, and it can also add its own properties and methods or override the ones inherited from the superclass.

///*To define a subclass in Swift, you use the colon : followed by the name of the superclass after the subclass's name. Here's the basic syntax for defining a subclass:

///*When to use classes :- When you share a class instance across your app, changes you make to that instance are visible to every part of your code that holds a reference to that instance. Use classes when you need your instances to have this kind of identity. Common use cases are file handles, network connections, and shared hardware intermediaries like CBCentralManager.






///#  Downcasting ::

///*In Swift, downcasting is the process of converting a variable of a superclass type to a variable of a subclass type when you believe that the variable actually holds an instance of the subclass. This is necessary because, in object-oriented programming, a variable of a superclass type can hold an instance of either the superclass itself or any of its subclasses.

//Swift provides two methods for downcasting:

///* as? (Optional Downcast Operator): This operator tries to downcast the variable to the desired subclass type and returns an optional value. If the downcast is successful, the optional will hold the value of the subclass type. If the downcast fails (because the variable doesn't contain an instance of the subclass), the optional will be nil.
///* as! (Forced Downcast Operator): This operator is used when you are certain that the downcast will succeed. It forcibly attempts the downcast and crashes at runtime if the variable doesn't hold an instance of the desired subclass.

//Here's an example to illustrate downcasting in Swift:

class Animals {
    func makeSound() {
        print("Animal makes a sound")
    }
}

class Dog: Animals {
    override func makeSound() {
        print("Dog barks")
    }
}

class Cat: Animals {
    override func makeSound() {
        print("Cat meows")
    }
}

let animals: [Animals] = [Dog(), Cat(), Dog(), Cat()]

for animal in animals {
    // Using as? (Optional Downcast)
    if let dog = animal as? Dog {
        print("It's a dog.")
        dog.makeSound()
    } else if let cat = animal as? Cat {
        print("It's a cat.")
        cat.makeSound()
    } else {
        print("Unknown animal.")
        animal.makeSound()
    }
}
//Output:

//It's a dog.
//Dog barks
//It's a cat.
//Cat meows
//It's a dog.
//Dog barks
//It's a cat.
//Cat meows

///*In this example, we have a base class Animal and two subclasses Dog and Cat. We create an array animals containing instances of both Dog and Cat classes. Inside the loop, we use the optional downcast as? to check if the current animal is an instance of Dog or Cat. If the downcast succeeds, we print the type and call the specific method of that subclass. Otherwise, we print "Unknown animal" and call the method from the Animal class.

///*Remember to use the forced downcast as! only when you are absolutely sure about the type of the instance. Otherwise, use the optional downcast as? and safely handle cases where the downcast might fail.
