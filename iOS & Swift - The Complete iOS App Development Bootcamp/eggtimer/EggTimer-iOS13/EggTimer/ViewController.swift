//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTime = ["Soft": 300, "Medium": 420, "Hard": 700]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var eggCookingProgressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        //print(sender.currentTitle!)
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        
        eggCookingProgressBar.progress = 0
        secondsPassed = 0 
        
        print("time start is \(totalTime)")
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            
            self.TitleLabel.text = "Your egg will be ready in \(self.totalTime) seconds!"
            
            self.secondsPassed += 1
            self.eggCookingProgressBar.progress = Float(self.secondsPassed) / Float(self.totalTime)
            
            if(self.secondsPassed > self.totalTime){
                timer.invalidate()
                self.TitleLabel.text = "Your eggs are done !!!"
                
            }
        }
    }
}
