//Randomisation


//Intiger

let randomNumber = Int.random(in: 0...3) // alphabet[Int.random(in: 0...25)]
print(randomNumber)
/*  Int.random(in: lower bound ... upper bound) in this 'Closed range Operator' case0,1,2 or 3 is printed */

let randomNumber1 = Int.random(in: 0..<3)
print(randomNumber1)
/* Int.random(in: lower bound ..< upper bound) in this case 'Half open range Operator' 3 is not printed  */

//Float

let randomNumber2 = Float.random(in: 0...2)
print(randomNumber2)
let randomNumber3 = Float.random(in: 0..<2)
print(randomNumber3)

//Double

let randomNumber4 = Double.random(in: 0...1)
print(randomNumber4)
let randomNumber5 = Double.random(in: 0..<1)
print(randomNumber5)

//Bool

let randomNumber6 = Bool()
print(randomNumber6)
/* in the case Bool there is no range, it's either  true or false*/


//Shuffle method

var anArray = [0, 1, 2, 3, 4, 5 ,6, 7]
anArray.shuffled()
/*if anArray is a constant it can't be shuffled, in that case declare a var that can be used in the future */
print(anArray)
//or
let anArray1  = [0, 1, 2, 3, 4, 5 ,6, 7]
var shuffledArray = anArray1.shuffled()[7]
/* insteadb of shufflig the whole array just pick a random positon from the arrray */
print(shuffledArray)
//print("\(anArray1.shuffled())")


//Random Element method

let anArray2 = [1, 2, 3, 4, 5, 6]
let shuffledArray1 = anArray2.randomElement()!
print(shuffledArray1)


//Example Password Generator

/*Random Element method*/
let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let password = alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()!

print(password) //or

/* Int.random method */
let alphabet1 = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let password1 = alphabet1[Int.random(in: 0...25)] + alphabet1[Int.random(in: 0...25)] + alphabet1[Int.random(in: 0...25)] + alphabet1[Int.random(in: 0...25)] + alphabet1[Int.random(in: 0...25)] + alphabet1[Int.random(in: 0...25)]

print(password1)

/*Shuffled Method 8*/
let alphabet2 = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let password2 = alphabet2.shuffled()[25] + alphabet2.shuffled()[25] + alphabet2.shuffled()[25] + alphabet2.shuffled()[25] + alphabet2.shuffled()[25] + alphabet2.shuffled()[25]

print(password2)
