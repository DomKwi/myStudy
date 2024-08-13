//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = example[0].title
        choice1Button.setTitle(example[0].choice1, for: .normal)
        choice2Button.setTitle(example[0].choice2, for: .normal)
    }
    var storyNumber = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let currentStory = example[storyNumber]
        let userChoice = sender.currentTitle!
        print(sender.currentTitle!)
        
        if userChoice == currentStory.choice1 {
            storyNumber = 1
        } else if userChoice == currentStory.choice2 {
            storyNumber = 2
        }
        UpdateUI()
    }
    
    let example = [
        Story(title: "You see a fork in the road.",
              choice1: "Take a left",
              choice2: "Take a right"),
        Story(title: "You see a tiger",
              choice1: "shout for help",
              choice2: "play dead"),
        Story(title: "You find a treasure chest",
              choice1: "Open it.",
              choice2: "check for traps")
    ]
    
    func UpdateUI() {
        storyLabel.text = example[storyNumber].title
        choice1Button.setTitle(example[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(example[storyNumber].choice2, for: .normal)
    }
}


