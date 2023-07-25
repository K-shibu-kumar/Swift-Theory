///# Set


///*In Swift, a Set is an unordered collection of unique elements. It is similar to an array but differs in that it does not allow duplicate values. Sets are implemented as a Hash Table, which allows for efficient insertion, deletion, and lookup operations.

//You can create a Set in Swift using the following syntax:

var mySet: Set<Int> = [1, 2, 3, 4, 5]
//Here, we've created a set called mySet that contains integers. Note that the type of the set is explicitly declared as Set<Int>.

///*Alternatively, you can use Swift's type inference to create a set without explicitly stating the type:

var mySet0 = Set<String>()
//Now, let's see some common operations that can be performed with sets in Swift:

///# Inserting elements:

var mySet1 = Set<String>()
mySet1.insert("apple")
mySet1.insert("banana")
mySet1.insert("orange")
print(mySet1)


///# Removing elements:

var mySet2: Set<Int> = [1, 2, 3, 4, 5]
mySet2.remove(3)
print(mySet2)
mySet2.removeAll()
print(mySet2)


///# Checking for existence:

var mySet3: Set<String> = ["apple", "banana", "orange"]
if mySet3.contains("apple") {
    print("The set contains 'apple'.")
}


///# Iterating over a set:

var mySet4: Set<String> = ["apple", "banana", "orange"]

for fruit in mySet4 {
    print(fruit)
}




///# Set Operations:


///# Union:
let set1: Set<Int> = [1, 2, 3]
let set2: Set<Int> = [3, 4, 5]
let unionSet = set1.union(set2)
print(unionSet)
// Result: [1, 2, 3, 4, 5]

///# Intersection:

let set3: Set<Int> = [1, 2, 3]
let set4: Set<Int> = [3, 4, 5]
let intersectionSet = set3.intersection(set4) // Result: [3]

///# Difference:

let set5: Set<Int> = [1, 2, 3]
let set6: Set<Int> = [3, 4, 5]
let differenceSet = set5.subtracting(set6) // Result: [1, 2]


///*Sets provide a convenient way to work with unique elements, especially when you need to perform set operations like union, intersection, and difference. Keep in mind that the order of elements in a set is not guaranteed, as they are inherently unordered collections.
