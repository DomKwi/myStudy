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
        let userChoice = sender.currentTitle!
        var nextStory = example[0]
        
        
        print(sender.currentTitle!)
        
        if userChoice == choice1Button.currentTitle! {
            nextStory = example[1]
            storyLabel.text = nextStory.title
            choice1Button.setTitle(nextStory.choice1, for: .normal)
            choice2Button.setTitle(nextStory.choice2, for: .normal)
            storyNumber = storyNumber + 1
            print(storyNumber)
        } else {
            nextStory = example[2]
            storyLabel.text = nextStory.title
            choice1Button.setTitle(nextStory.choice1, for: .normal)
            choice2Button.setTitle(nextStory.choice2, for: .normal)
            storyNumber = storyNumber + 2
            print(storyNumber)
        }
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
}

