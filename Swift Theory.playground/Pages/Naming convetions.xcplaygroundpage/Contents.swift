/* In Swift, function parameters can have both an external and an internal name. The external name is used by the caller to pass a value to the parameter, while the internal name is used by the function body to get the parameter value.
 */

//Here’s an example that demonstrates the use of external and internal parameter names in a function:

func greet(_ person: String, with hometown: String) {
    print("Hello \(person)!  Glad you could visit from \(hometown).")
}
greet("Bill", with: "Cupertino")


// Here we omit the external parameter so we can simply get the input value,
// with is a Swift english adaptation to make the code more readable


/*

Swift has several naming conventions that are recommended to follow when writing code. Some of these conventions include:

Striving for clarity at the call site: Names should be clear and descriptive, making it easy to understand what a function or variable represents when reading the code1.
Prioritising clarity over brevity: While it’s important to keep names concise, clarity should always be the top priority. Avoid using abbreviations or shortening names at the expense of clarity1.
Using camel case: Swift uses camel case for naming, which means that the first word in a name is lowercase, and the first letter of each subsequent word is uppercase. For example: myVariableName1.
Using uppercase for types and lowercase for everything else: Types (such as classes, structs, enums, and protocols) should start with an uppercase letter, while all other names (such as variables, constants, and functions) should start with a lowercase letter1.
Omitting needless words: Names should be concise and to the point. Avoid including unnecessary words that don’t add any additional meaning1.
These are just a few of the naming conventions used in Swift. It’s important to follow these conventions to make your code clear, readable, and consistent.

*/
