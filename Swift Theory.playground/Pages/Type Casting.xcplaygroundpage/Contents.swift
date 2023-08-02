///# Type Casting

///*In Swift, type casting allows you to check the type of an instance and/or treat it as a different class, subclass, or protocol type. There are two main forms of type casting in Swift: "as" and "is" operators.

///# "as" Operator:

//The "as" operator is used for explicit type casting, where you specify the target type you want to convert the instance into. There are two types of "as" operators:
//a. as? (Conditional downcasting): It attempts to convert the instance into the specified type. If the conversion succeeds, it returns an optional value with the converted type. If the conversion fails, it returns nil.

//b. as! (Forced downcasting): It forcibly converts the instance into the specified type. If the conversion fails at runtime, it results in a runtime error (crash).

//Here's how you can use the "as" operator:

// Example classes
class Animal1 {}
class Dog: Animal1 {}
class Cat: Animal1 {}

let animal1: Animal1 = Dog()

// Conditional downcasting (as?)
if let dog = animal1 as? Dog {
    print("It's a dog!")
} else {
    print("It's not a dog.")
}

// Forced downcasting (as!)
let dog = animal1 as! Dog
print("It's definitely a dog!")


///# "is" Operator: Is used for type checking

///*The "is" operator is used for checking the type of an instance without performing a type conversion. It returns a boolean value indicating whether the instance is of the specified type.

let anotherAnimal: Animal1 = Cat()

if anotherAnimal is Dog {
    print("It's a dog!")
} else if anotherAnimal is Cat {
    print("It's a cat!")
} else {
    print("It's something else.")
}


///*Type casting is useful when you work with collections of different types or when you want to interact with objects that conform to shared protocols without knowing their exact type. Always use "as?" when the type conversion might fail to avoid runtime crashes, unless you are absolutely sure the conversion will succeed, in which case you can use "as!".


///# Another example with Explanation:-


import Foundation

class Animal {
    var name: String
    init (n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("typing something....")
    }
}

class Fish: Animal {
    func breathUnderWater(){
        print("Breathing under water....")
    }
}

let me = Human(n: "Noxid")
let avatar = Human(n: "Mad King")
let nemo = Fish(n: "Nemo")

let squad = [me, avatar, nemo]// Common attribute :Animal Superclass





///# "is" operator: Type Checking
// this is useful when there is an uncertainty of data type
if squad[0] is Human {
    print("First member is a Human")
}
if squad[1] is Human {
    print("Second member is a Human")
}
if squad[2] is Human {
    print("Third member is also a Human")
} else {
    print("Not Human")
}





///# "as!" Operator: Forced Down Casting :- Forcing the type to one of the SubClass
func findNemo(from animals: [Animal]) {
    for animal in animals {
        print(animal.name)// All members of Animal Class
        if animal is Fish {
            print(animal.name) // Finding member of Fish Class
            //animal.breathUnderWater()// The animal here is of Animal Class, And we can't access to the subClass Fish yet.
            
            
            
            
            ///# Force Down Casting
            let fish = animal as! Fish
            fish.breathUnderWater()
            
            
            
            
            ///# "as" Type Casting :- Up Casting
            // Changing subclass type in to superclass

            let animalToFish = fish as Animal// changing subclass Fish to Animal of var fish
        
        }
    }
}

findNemo(from: squad)


///# When to use as?
//let fish = squad[1] as! Fish
//fish.breathUnderWater()
// The reason compiler won't give any unless we run it because we are forcing and saying we know for sure.
// Error at run time
// If we are not sure if it can adapt to the specific Class to which we are down casting to, Then Use "as?"






///# "as?" Down Casting:

if let fish = squad[0] as? Fish {
    fish.breathUnderWater()
} else {
    print("Casting has failed")
}

if let fish =  squad[1] as? Fish {
    fish.breathUnderWater()
} else {
    print("Casting has failed")
}

if let fish = squad[2] as? Fish {
    fish.breathUnderWater()
} else {
    print("Casting has failed")
}










///# Any , AnyObject, NSObject


///# Any:-
let num = 32
let squadAny: [Any] = [me, avatar, nemo, num]
// Classes, Structures or Any other data type

///# AnyObject:-
let squadAnyObject: [AnyObject] = [me, avatar, nemo]
// Only of object from Class. It won't accept object from Struct. try changing one of the Classes from above and we end up in an error.
// INT, String ... are a Struct

///# NSObject:-
let NSNum: NSNumber = 17
let NSString: NSString = "IsString"

let squadNSObject: [NSObject] = [NSNum, NSString]
// Only NS object types are allowed


///*In Swift, type casting is the process of converting one type of value to another type. The Any, AnyObject, and NSObject are three types commonly used for type casting in Swift. Let's explore each of them:

///*Any is a type that represents values of any type, including both value types (e.g., Int, String, Bool) and reference types (e.g., classes). It can store any type of value, making it useful when you need to work with mixed types or in cases where the exact type is unknown at compile time.

