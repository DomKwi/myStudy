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
