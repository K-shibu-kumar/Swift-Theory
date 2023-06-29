// Arrays also a Collection type

let numbers = [3, 2, 4, 5] // creating an Array these are 1D array
var computedNumbers = [numbers[0]*numbers[1], numbers[1]+numbers[2], numbers[2]-numbers[3]]
print(computedNumbers) // Retrieving from an Array with index value
/* Array is a data type which contains a set of items or data with 'index value' , arrays are always represented in b/w [], while retrieving data select the corresponding index value */
let numbers1 = [
    [0,1,2],
    [3,4,5],
    [6,7,8]
] /*this is a 2D Array . to get hold of the value '7'*/

print(numbers1 [2][1])


var anArray = ["string1", "string2", "string3"]
print(anArray.count)
