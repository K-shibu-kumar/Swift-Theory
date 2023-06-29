// Protocol

/*
 A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
 
 Class, Structure or Enumerations can adopt a protocol
 
 
 Creating a protocol:
 
 protocol FirstProtocol {
 func fly()
 }
 
 Adopting protocol:
 
 struct MyStructure: FirstProtocol, AnotherProtocol {
 // Struct definition goes here
 }
 
 class MyClass: SuperClass, FirstProtocol, AnotherProtocol {
 // Class definition goes here
 }
 
 */




//Example:-

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        print("The bird makes a new bird in a shell.")
    }
}

class Eagle: Bird, CanFly {
    func soar() {
        print("The Eagle glides in the air using air current")
    }
    func fly() {
        print("The bird flaps it's wings and lift off in to the sky")
    }
    
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through water.")
    }
}
struct Airplane: CanFly {
    func fly() {
        print("The airplane uses it's engine to lift off in to the air")
    }
    
}

struct FlyingMuseum {
    func flyingDemo(flyingObject : CanFly){
        print(flyingObject.fly())
    }
}

var myEagle = Eagle()
let myPenguin = Penguin()
let myAirplane = Airplane()

let museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: myPenguin) // Penguin did not adopt the CanFly protocol
museum.flyingDemo(flyingObject: myAirplane)



