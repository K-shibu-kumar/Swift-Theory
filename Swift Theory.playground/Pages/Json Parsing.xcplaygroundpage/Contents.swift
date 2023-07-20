///# Json Parsing
import Foundation

///*To parse JSON using custom structures in Swift, you can use the Codable protocol. Codable is a Swift protocol that provides an easy way to encode and decode data to and from JSON format.

//Here's how you can do JSON parsing using custom structures with Codable:

//Let's assume you have the following JSON data:

//  json
//  Copy code
//  {
//      "name": "John Doe",
//      "age": 30,
//      "email": "john@example.com"
//  }

///*Define a Swift struct that represents the structure of the JSON data:

struct Person: Codable {
    let name: String
    let age: Int
    let email: String
}

///*Parse the JSON data into the custom struct:


let jsonString = """
{
    "name": "John Doe",
    "age": 30,
    "email": "john@example.com"
}
"""

let jsonData = jsonString.data(using: .utf8)!

do {
    let person = try JSONDecoder().decode(Person.self, from: jsonData)
    print("Name: \(person.name)")
    print("Age: \(person.age)")
    print("Email: \(person.email)")
} catch {
    print("Error: \(error)")
}

///*Output:

//Name: John Doe
//Age: 30
//Email: john@example.com

///*In this example, we define a Person struct that conforms to the Codable protocol. The struct's properties map to the keys in the JSON data. The JSONDecoder class is then used to decode the JSON data into an instance of the Person struct. If decoding is successful, the properties of the Person instance are printed to the console.

///*Swift's Codable protocol automatically handles the mapping between the struct and the JSON data, making it easy to parse JSON data into custom structures and vice versa.

///*Keep in mind that the JSON keys and struct properties should have the same names to ensure successful parsing. If you have different key names in JSON data, you can use the CodingKeys enum to specify custom mappings between the JSON keys and struct properties.
