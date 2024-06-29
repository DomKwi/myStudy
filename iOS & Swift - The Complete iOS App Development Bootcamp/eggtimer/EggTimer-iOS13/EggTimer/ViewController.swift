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
        
        //self.eggCookingProgressBar.progress = 1
        
        print("time start is \(totalTime)")
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            
            let procentageProgress = self.secondsPassed / self.totalTime 
            self.eggCookingProgressBar.progress = Float(procentageProgress)
            
            self.TitleLabel.text = "Your egg will be ready in \(self.totalTime) seconds!"
            self.secondsPassed += 1
            
            if(self.secondsPassed < self.totalTime){
                timer.invalidate()
                self.TitleLabel.text = "Your eggs are done !!!"
                
            }
        }
    }
}
