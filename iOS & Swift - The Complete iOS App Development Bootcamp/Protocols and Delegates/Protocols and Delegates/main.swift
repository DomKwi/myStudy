
protocol AdvanceLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?
    
    func assessSituation() {
        print("CAn you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic doses chest compressions, 30 per second.")
    }
}


class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per secend.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
    
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectronicDrill() {
        print("Whirr...")
    }
}


let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
