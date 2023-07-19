///# Dictionary

///*In Swift, a dictionary is a collection type that allows you to store key-value pairs in an unordered manner. It is commonly used to represent associations between keys and corresponding values. Each value in a dictionary is associated with a unique key, and you can use this key to retrieve the value.

///# Here's how you can declare, initialise, and use dictionaries in Swift:

///# 1. Declaring a dictionary:
///*To declare a dictionary, you specify the types of the keys and values it will hold inside square brackets and use the Dictionary keyword or the shorthand notation [KeyType: ValueType].

var scores: Dictionary<String, Int> // Declare a dictionary with String keys and Int values
var ages: [String: Int] // Shorthand notation to declare the same dictionary

///# 2. Initialising a dictionary:
///*You can create a dictionary and provide its initial key-value pairs using a dictionary literal, which is a comma-separated list of key-value pairs enclosed in square brackets.

var scores0: [String: Int] = ["John": 85, "Alice": 92, "Bob": 78]
var ages0 = ["John": 30, "Alice": 28, "Bob": 25] // Swift infers the types of keys and values

///# 3. Accessing values in a dictionary:
///*You can access values in a dictionary using their corresponding keys. If the key exists, you will get the associated value; otherwise, you will get nil.

var scores1 = ["John": 85, "Alice": 92, "Bob": 78]
let johnScore = scores1["John"] // johnScore will be an Optional Int with value 85
let lisaScore = scores1["Lisa"] // lisaScore will be nil

///# 4. Modifying values in a dictionary:
///*You can modify the value associated with a key or add new key-value pairs to the dictionary.

var scores2 = ["John": 85, "Alice": 92, "Bob": 78]

///# 5. Modify the value for an existing key
scores2["Alice"] = 95 // Now, Alice's score is updated to 95

///# 6. Add a new key-value pair
scores2["Lisa"] = 88 // Lisa is added to the dictionary with a score of 88



///#Dictionary methods and properties:
///*Swift provides various useful methods and properties for dictionaries. Some commonly used methods include removeValue(forKey:) and count.

var scores3 = ["John": 85, "Alice": 92, "Bob": 78]

scores3.removeValue(forKey: "Bob") // Removes the key-value pair for Bob

print(scores3.count) // Output: 2, as there are two key-value pairs left in the dictionary
///*Dictionaries are very versatile and are widely used in Swift programming when you need to associate unique keys with corresponding values. They provide a convenient and efficient way to work with data that can be accessed using keys, making them an essential tool in your Swift programming toolbox.
