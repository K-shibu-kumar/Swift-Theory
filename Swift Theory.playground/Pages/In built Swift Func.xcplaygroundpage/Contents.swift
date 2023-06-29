// High level func included in swift


// .map()

let array = [6,3,2,8,9,3] // we want to add 1 to each of the items in this array


print(array.map{$0 + 1})// here .map() is a inbuilt func of swift. which takes addOne() method as an input parameter.

let newArray = array.map{"\($0)"} // Here using the closure and .map() we can convert the above array of Int in to a newArray of Strings
print(newArray)


// .reduce()

// .filter()
