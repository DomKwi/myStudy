import UIKit

struct Town {
    let name = "Angelaland"
    var citizens = ["Angela","Jacnk Bauer"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify() {
        print("Defences increased!")
    }
}

var myTown = Town()

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")

myTown.citizens.append("Keanu Reeves")

myTown.fortify()


struct Town2 {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = Town2(name: "NameLess island", citizens: ["Tom Hanks"], resources: ["cocounuts" : 100])
print(anotherTown)



// Define the User struct here
struct User {
    let name: String
    var email: (String?)
    var followers: Int
    var isActive: Bool
    
    init(name: String, email: String?, followers: Int, isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
    
    func logStatus() {
        if isActive == true {
            print("\(name) is working hard")
        } else {
            print("\(name) has left earth")
        }
    }
}

// Initialise a User struct here

var userRichard = User(name: "Richard", email: nil, followers: 0, isActive: false)
userRichard.logStatus()

// Diagnostic code - do not change this code
print("\nDiagnostic code (i.e., Challenge Hint):")
var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
musk.logStatus()
print("Contacting \(musk.name) on \(musk.email!) ...")
print("\(musk.name) has \(musk.followers) followers")
// sometime later
musk.isActive = false
musk.logStatus()


