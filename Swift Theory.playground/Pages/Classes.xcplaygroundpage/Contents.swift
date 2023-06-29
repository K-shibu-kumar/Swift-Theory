// Classes

 /* Classes are like structures. In which can print out an object  */
//it is a convention that the name of the class and name of the file should match
//Define a class
//Initialise a class
//
class Town {
    let name = "Erangel"
    var citizens = ["Noxid", "Ghost"] // this is a property of the struct
    var resources = ["Medkit": 30, "Painkiller": 60, "Bandaids": 240, "Adrenaline": 55, "Energy drinks": 135]
    
    func attack(){
        print("Squad is ready to deploy!")// this is called a Method. func inside a struct
    }
}

/*Initialising a Class*/
var myTown = Town()
/* Accessing the Class */
print("\(myTown.citizens[0]) has \(myTown.resources["Bandaids"]!) Bandaids. ")
/* editing the Class*/
myTown.citizens.append("Mad King")
print(myTown.citizens) //or
print(myTown.citizens.count)// counting the elements
/* Func associated with a Struct or Class , is called a Method */
myTown.attack()


// Classes with initialiser

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


// Superclasses and Inheritance

/* Superclass already a default sets of properties and methods, The subclass can access and grow in to which is called 'Inheritance'. Think of like a parent and kid
 Subclass can inherit all from the Superclass , make changes by 'override'. inherit the same method and can have custom func by 'super'
 */

// Differences
/* Passed by reference : - We can't have more than one var pointing to the same Class . cause those all hold the same value. It refers to the identity of the object. We are simply sharing the class instance around. Not the info associated with.
 
 *** When to use classes :- When you share a class instance across your app, changes you make to that instance are visible to every part of your code that holds a reference to that instance. Use classes when you need your instances to have this kind of identity. Common use cases are file handles, network connections, and shared hardware intermediaries like CBCentralManager.
 
 */


/* Downcasting

we can cast down a superclass in to subclass by
'as subclass' notation
as! subclass' means we are forcing it to downcast

 first we used in segue: - to change the data type of the UIView to custom Subclass made by us.
 
 because in segue Apple let it us to decide how to customise the properties and methods in it's superclass.
*/
