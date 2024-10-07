
class Bird {
    
    var isFamele = true
    
    func layEggs() {
        if isFamele {
            print("The bird makes a new bird in a shell.")
        }
    }
    
    func fly() {
        print("The bird flasps its wings and liff in to the sky.")
    }
}

class Eagle: Bird {
}

let myEagle = Eagle()
myEagle.layEggs()
myEagle.fly()
