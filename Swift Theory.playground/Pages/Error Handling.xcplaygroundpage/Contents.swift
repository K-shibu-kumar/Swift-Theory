// Error Handling

/*
 Error handling is the process of responding to and recovering from error conditions in your program. Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.
 
 
// Here’s how you handle the error in Swift:

 let fileManager = FileManager.default
 let fromURL = URL(fileURLWithPath: "/path/to/old")
 let toURL = URL(fileURLWithPath: "/path/to/new")
 do {
     try fileManager.moveItem(at: fromURL, to: toURL)
 } catch let error as NSError {
     print("Error: \(error.domain)")
 }
 
 
 You can also use the do-catch statement to match on specific Cocoa error codes to differentiate possible failure conditions:

 do {
     try fileManager.moveItem(at: fromURL, to: toURL)
 } catch CocoaError.fileNoSuchFile {
     print("Error: no such file exists")
 } catch CocoaError.fileReadUnsupportedScheme {
     print("Error: unsupported scheme (should be 'file://')")
 }
 
 
 */
