import Foundation

///# Calculator in progress

struct Calculator {
    private var accumulator: Double = 0.0
    private var operation: String = ""
    mutating func clear() {
        accumulator = 0.0
        operation = ""
    }
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
    mutating func performOperation(_ symbol: String) {
        switch symbol {
        case "+":
            accumulator += accumulator
        case "-":
            accumulator -= accumulator
        case "*":
            accumulator *= accumulator
        case "/":
            accumulator /= accumulator
        default:
            break
        }
        operation = symbol
    }
    func getResult() -> Double {
        return accumulator
    }
}


var myCalculator = Calculator()


