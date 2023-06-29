// Structures  ( Custom data type )


/* Defining a Struct. Also a simple struct has its default init
 in the below case name: String , citizens: [String] an Array, resources: [String : Int] a Dictionary*/
struct Town {
    let name = "Erangel"
    var citizens = ["Noxid", "Ghost"] // this is a property of the struct
    var resources = ["Medkit": 30, "Painkiller": 60, "Bandaids": 240, "Adrenaline": 55, "Energy drinks": 135]
    
    func attack(){
        print("Squad is ready to deploy!")// this is called a Method. func inside a struct
    }
}
/*Initialising a Struct*/
var myTown = Town()
/* Accessing the struct */
print(myTown.citizens)
print("\(myTown.citizens[0]) has \(myTown.resources["Bandaids"]!) Bandaids. ")
/* editing the Struct*/
myTown.citizens.append("Mad King")
print(myTown.citizens) //or
print(myTown.citizens.count)// counting the elements

// Method (Adding a func inside a Struct)
/* Func associated with a Struct or Class , is called a Method */
myTown.attack()







// Struct with init

/* struct is like a blueprint we can use later to create multiple elements of an app. init let us tap in to the input properties of the struct
 think of struct is like a "BluePrint"
 and it has "Properties"
 and func as "Methods"
 access this struct to create multiple objects whenever we want */
//defined a new struct
struct Town1 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(townName: String, people: [String], stats: [String: Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    
    func attack(){
        print("Squad is ready to deploy!")
    }
}


var newTown = Town1(townName: "Erangel", people: ["Noxid"], stats: ["Ammo": 150])
print(newTown)
newTown.citizens.append("Mad King")
print("\(newTown.citizens.count)")
print(newTown.citizens)



// Using self

/* .self refers to the property of struct . by default .self is a let keyword
 self is not referred in init initialiser */
struct Town2 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func attack(){
        print("Squad is ready to deploy!")
        
    }
    mutating func collectPainkiller () {
        resources["Painkiller"] = 200 // here self is immutable, we can't make changes
    }
}




var newTown1 = Town2(name: "Erangel", citizens: ["Noxid"], resources: ["Ammo": 300])
print(newTown1)
newTown1.citizens.append("Mad King")
print("\(newTown1.citizens.count)")
print(newTown1.citizens)


var anotherTown = Town2(name: "Rozhok", citizens: ["Madking", "Raven"], resources: ["Medkit": 40, "M416A": 7])
print(anotherTown)
var NoOneSIland = Town2(name: "Vikendi", citizens: ["Squad1", "Squad2", "Squad3", "Squad4"], resources: ["M4": 4, "UZI": 6, "AK": 6])
print(NoOneSIland)

NoOneSIland.attack()

//Immutability


/* when making changes to the properties of a struct within the struct using a method we have to mutate it by adding mutating before the method*/

newTown1.collectPainkiller() // check the mutating func collectPainKiller ()
print(newTown1.resources)

/* like we said... self is by default created as a let keyword inside a struct. so in order to change the let keyword of self in to var to make changes inside a struct mutating is added.*/

// Methods inside struct

/* a struct has actually 2 methods .
 Plain Method : - that does not change anything about the struct
 Mutating Method : -  this method can change the state or properties of the struct */





//Exercise

struct User {
    var  name: String
    var email: String?
    var followers: Int
    var isActive: Bool
    
    init(name: String, email: String?, followers: Int, isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
    func logStatus() {
        if (isActive) {
            Swift.print("\(name) is working Hard")
        }else{
            Swift.print("\(name) has left the earth")
        }
    }
    
}



//result

var Richard = User(name: "Richard", email: nil, followers: 0, isActive: false)
Richard.logStatus()



// Diagnostic code - do not change this code
print("\nDiagnostic code (i.e., Challenge Hint):")
var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
musk.logStatus()
print("Contacting \(musk.name) on \(musk.email!) ...")
print("\(musk.name) has \(musk.followers) followers")
// sometime later
musk.isActive = false
musk.logStatus()


// Difference with Classes

/*
 Immutable : - whenever we make changes in a struct , it destroys the old struct and creates an entire new struct
 
 Passed by Value : - Meaning we can have more than one var pointing to the same object. And that var can be played around.
 */



// you can set class or struct as a input type of another class or struct: struct MyStruct(parameter : Class) {}      like so. But only a class can inherit
