///# Computed Property

///*In Swift, a computed property is a property that does not store an underlying value directly but instead provides a getter and optionally a setter to compute its value on-the-fly based on other properties or logic. Computed properties are declared using the var keyword, but instead of providing a value directly, you provide a getter and/or a setter to calculate the value when it is accessed or set.

//Here's the basic syntax for declaring a computed property in Swift:

//  var propertyName: PropertyType {
//      get {
//          // Code to compute the property value and return it
//          return computedValue
//      }
//      set(newValue) {
//          // Code to update the property based on the new value
//          // (Optional: If you want to provide a setter)
//      }
//  }

//Here's an example of a computed property to calculate the area of a circle:

import Foundation

class Circle {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }
    
    var area: Double {
        get {
            return Double.pi * radius * radius
        }
    }
}

let circle = Circle(radius: 5.0)
print("Area of the circle: \(circle.area)")

///*In this example, we define a Circle class with a computed property area. The area property does not store a value directly but calculates it based on the radius property of the Circle instance. The getter method calculates the area of the circle using the formula π * radius * radius.

///*When we access the area property using circle.area, the getter is automatically called to compute the area based on the current value of the radius property.

///*Note that computed properties must always provide a getter. If you don't need a setter, you can omit it entirely, and the property becomes read-only. If you provide a setter, the property becomes read-write, and you can update the property's value using the setter.

///*Computed properties are a powerful feature in Swift that allows you to encapsulate complex calculations and logic within the property accessors, improving code readability and maintainability.
