// SWITCH statements

/* if conditions > 5 {
 useSwitch() */
//   in switchStatement instead of going through ech conditions SWIFT performs a search

/*switch varName{
 case condition1:
 print()
 case condition2:
 print()
 case condition3:
 print()
 default:
 print("error")
 }  */
//Example
func loveCalculator1(){
    var loveScore = Int.random(in: 0...100)
    switch loveScore{
    case 80...100 :
        print("MadeInHeaven")
    case 50..<80 :
        print("StillCanMakeItWork")
    case 30..<50 :
        print("YouAreDoomed")
    case ..<30 :
        print("JustDie")
    default:
        print("Nooooooob")
    }
}
loveCalculator1()


func dayOfTheWeek(day: Int) {
    
    switch day {
    case 1:
        print("Sunday")
    case 2:
        print("Monday")
    case 3:
        print("Tuesday")
    case 4:
        print("Wednesday")
    case 5:
        print("Thursday")
    case 6:
        print("Friday")
    case 7:
        print("Saturday")
        
    default:
        print("number is out of scope")
    }
    
    print(day)
    
}
dayOfTheWeek(day: Int.random(in: 1...7))
