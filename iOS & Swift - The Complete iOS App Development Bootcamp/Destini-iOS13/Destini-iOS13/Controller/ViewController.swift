//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.example[0].title
        choice1Button.setTitle(storyBrain.example[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.example[0].choice2, for: .normal)
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        print(sender.currentTitle!)
        
        UpdateUI()
    }
    
    
    
    func UpdateUI() {
        storyLabel.text = storyBrain.example[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.example[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.example[storyBrain.storyNumber].choice2, for: .normal)
    }
}


