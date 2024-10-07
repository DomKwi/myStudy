protocol CanFly {
    func fly()
}

class Bird {
    
    var isFamele = true
    
    func layEggs() {
        if isFamele {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct flyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lif off into the air.")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEggs()
let myPenguin = Penguin()
myPenguin.layEggs()
let myPlane = Airplane()
myPlane.fly()
