///#  Protocol
import Foundation

///*In Swift, protocols and delegates are powerful concepts used for defining and implementing communication between objects and promoting loose coupling in your code. They play a crucial role in enabling the delegation design pattern, which allows one object (the delegate) to communicate and respond to events or actions from another object.

///# Protocols:
///*A protocol in Swift is a blueprint for methods, properties, and other requirements that a conforming type (class, struct, or enum) must implement. It defines a set of rules that a type must adhere to without specifying the implementation details. Protocols enable you to define a contract between different components in your application, making it easier to create reusable and interchangeable pieces of code.

//Here's an example of a simple protocol:

protocol GreetingProtocol {
    func sayHello()
}
///*In this example, we define a protocol GreetingProtocol with a single method requirement sayHello(). Any type that conforms to this protocol must implement the sayHello() method.

///# Delegates:
///*A delegate is an object that conforms to a protocol and is responsible for providing specific functionality or responding to events on behalf of another object. The delegating object holds a weak reference to its delegate, ensuring that there is no strong reference cycle.

//Let's see an example of a delegate pattern using protocols:

protocol GreetingDelegate: AnyObject {
    func didReceiveGreeting(_ greeting: String)
}

class Greeter {
    weak var delegate: GreetingDelegate?
    
    func greet() {
        let greeting = "Hello, Swift!"
        delegate?.didReceiveGreeting(greeting)
    }
}

class ViewController: GreetingDelegate {
    let greeter = Greeter()
    
    init() {
        greeter.delegate = self
    }
    
    func didReceiveGreeting(_ greeting: String) {
        print("Received greeting: \(greeting)")
    }
}

let viewController = ViewController()
viewController.greeter.greet() // Output: Received greeting: Hello, Swift!

///*In this example, we define a protocol GreetingDelegate with a single method requirement didReceiveGreeting(_:). The Greeter class has a delegate property of type GreetingDelegate?, which allows it to call the didReceiveGreeting(_:) method whenever appropriate. The ViewController class conforms to the GreetingDelegate protocol and sets itself as the delegate of the greeter instance. When the greet() method is called on the greeter, it calls the delegate's didReceiveGreeting(_:) method, which prints the received greeting.

///*Delegates allow objects to communicate without having to know the specifics of each other's implementation. This promotes a clean and modular design in your codebase, enhancing its maintainability and reusability.
