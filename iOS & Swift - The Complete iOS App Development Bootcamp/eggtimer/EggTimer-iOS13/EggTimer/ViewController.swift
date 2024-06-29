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
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var eggCookingProgressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        //print(sender.currentTitle!)
        timer.invalidate()
        let hardness = sender.currentTitle!
        var timeLeft = eggTime[hardness]!
        self.eggCookingProgressBar.progress = 1
        
        print("time start is \(timeLeft)")
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.TitleLabel.text = "Your egg will be ready in \(timeLeft) seconds!"
            
            timeLeft -= 1
            print("\(timeLeft) seconds.")
            
            if(timeLeft==0){
                timer.invalidate()
                self.TitleLabel.text = "Your eggs are done !!!"
                
            }
        }
    }
}
