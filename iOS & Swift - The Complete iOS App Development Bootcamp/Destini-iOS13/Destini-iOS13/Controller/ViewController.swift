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
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
    }
    
    let example = [
        Story(title: "Example Story",
              choice1: "Take a left",
              choice2: "Take a right"),
        Story(title: "You see a tiger",
              choice1: "shout for help",
              choice2: "play dead"),
        Story(title: "You find a treasure chest", choice1: "Open it.", choice2: "check for traps")
    ]
}

