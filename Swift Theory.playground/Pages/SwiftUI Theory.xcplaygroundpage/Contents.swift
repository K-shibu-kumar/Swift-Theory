///# Ternary Operator


import SwiftUI
///*The ternary conditional operator (also known as the conditional operator) a ? b : c is used to return one of two values based on a condition. In SwiftUI, you can use the ternary operator to conditionally apply modifiers or display different views based on a condition.

//Here's an example of how you might use the ternary operator in SwiftUI:

struct ContentView: View {
    @State private var isToggled = false

    var body: some View {
        VStack {
            Text("Hello, ")
            Text(isToggled ? "World!" : "SwiftUI!")
        }
        .padding()
        .background(isToggled ? Color.blue : Color.green)
        .foregroundColor(isToggled ? Color.white : Color.black)
        .onTapGesture {
            self.isToggled.toggle()
        }
    }
}

///*In this example, when isToggled is true, it will display "Hello, World!" in blue text with a green background. When isToggled is false, it will display "Hello, SwiftUI!" in black text with a blue background. When tapped, the onTapGesture toggles the value of isToggled.

///*Remember that the ternary operator is just one way to conditionally modify or display views in SwiftUI. Depending on your specific use case, you might also use if statements or switch statements to control the flow of your UI.




///# ABSOLUTE VALUE


///*In Swift, the abs() function is used to find the absolute value of a numeric type. It returns the absolute value of a number, which is its distance from zero, regardless of its sign.

///*Here's an example:
let num1 = -10
let num2 = 20

let absNum1 = abs(num1) // absNum1 will be 10
let absNum2 = abs(num2) // absNum2 will be 20
In the example above, abs() is used to find the absolute values of num1 and num2. The result is that absNum1 is 10 and absNum2 is 20.

///*Regarding "conditional" in your question, if you want to conditionally take the absolute value based on a condition, you can use a ternary conditional operator:

let number = -5
let condition = true

let result = condition ? abs(number) : number

// If condition is true, result will be the absolute value of number (which is 5)
// If condition is false, result will be the original number (which is -5)
///*x*In this example, abs(number) is used if the condition is true, otherwise, it returns the original number.
