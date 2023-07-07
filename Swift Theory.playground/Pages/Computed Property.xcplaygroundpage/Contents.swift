// Computed Property

/*A Computed Property provides a getter and an optional setter to indirectly access other properties and values. It can be used in several ways.

A common use-case is to derive value from other properties. In the following example, we’re creating a filename based on the name and file extension:
 
 Conditions:- A data type, return syntax, and computation should be provided.
 
*/
struct Content {
    var name: String
    let fileExtension: String
    
    // A computed property to generate a filename.
    var filename: String {
        return name + "." + fileExtension
    }
}

let content = Content(name: "swiftlee-banner", fileExtension: "png")
print(content.filename) // Prints: "swiftlee-banner.png"
