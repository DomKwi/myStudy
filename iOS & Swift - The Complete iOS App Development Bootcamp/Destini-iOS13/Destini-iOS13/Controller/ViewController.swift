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
        storyLabel.text = example.title
        choice1Button.setTitle(example.choice1, for: .normal)
        choice2Button.setTitle(example.choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
    }
    
    let example = Story(title: "Example Story",
                        choice1: "Choice 1",
                        choice2: "Choice 2")
}

