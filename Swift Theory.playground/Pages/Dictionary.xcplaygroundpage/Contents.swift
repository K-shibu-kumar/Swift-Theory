//Dictionary also a Collection type

/* multiple Key Value pairs which are separated by a coma. , .
 Key is the name . Value is the data.
 Key and Value both could be String, or
 Key = String Value = Int etc...
 
 */
// creating a Dictionary
var dictionary = ["Brewery" : "a place where beer is brewed",
                  "Bakery" : "a place where bread is made"]
var dictionary1: [String : Int] = ["Dixon" : 8891117277,  /* this is explicit data type method*/
                                   "Noxid" : 7907919371]  /* :of type [collection of type : data type]*/
//Retrieving from a Dictionary
dictionary1["Dixon"] // instead of calling the index value in Array. callout the name of the "Key"

//Example
func exercise() {
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc"
    ]
    stockTickers ["WORK"] = "Slack Technologies Inc" // added new Key and Value
    stockTickers ["BOOM"] = "DMC Global Inc" // modified existing Value of a Key
    print(stockTickers["WORK"]!) // here while extracting result  SWIFT will consider KEY as an optional. What if it could be a nill, or couldn't find the Key.
    print(stockTickers["BOOM"]!)// syntax for executing output of DICT is
    // nameOfDict["Key"]!
    // create a dict. let a code use the key as an input . then manipulate the key's value
}
exercise()
