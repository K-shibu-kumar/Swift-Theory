// Protocol

/*
 A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
 
 Class, Structure or Enumerations can adopt a protocol.
 And using the delegates design a class or struct or enumerations can to talk one another
 
 
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



// Delegate

/*
 
 Protocols are defined in the same file were we use that protocol
 
 Delegation is a design pattern in Swift that allows one object to delegate some of its responsibilities to another object. This is done by defining a delegate protocol that specifies the methods and properties that the delegate object must implement. The delegating object keeps a reference to the delegate object and sends messages to it at the appropriate time.
 */




// Example for Delegate


// Define a delegate protocol
protocol MyDelegate: AnyObject {
    func didFinishTask(sender: MyClass)
}

class MyClass {
    // Create a delegate property
    weak var delegate: MyDelegate?
    
    func doTask() {
        // Perform some task...
        
        // Notify the delegate that the task is finished
        delegate?.didFinishTask(sender: self)
    }
}

class MyDelegateClass: MyDelegate {
    func didFinishTask(sender: MyClass) {
        print("Task finished!")
    }
}

let myObject = MyClass()
let myDelegate = MyDelegateClass()
myObject.delegate = myDelegate
myObject.doTask()


/*
 In this example, we define a MyDelegate protocol with a single method didFinishTask(sender:). The MyClass class has a delegate property of type MyDelegate? and a doTask() method that performs some task and then notifies the delegate that the task is finished by calling the didFinishTask(sender:) method on the delegate. The MyDelegateClass class adopts the MyDelegate protocol and implements the didFinishTask(sender:) method.

 We create instances of MyClass and MyDelegateClass, set the delegate property of myObject to myDelegate, and call the doTask() method on myObject. When the task is finished, the didFinishTask(sender:) method is called on the delegate object, which prints “Task finished!”.

 This is just a simple example, but it should give you an idea of how delegation works in Swift.
 
 */


// For Further ref
// https://jamesrochabrun.medium.com/implementing-delegates-in-swift-step-by-step-d3211cbac3ef
