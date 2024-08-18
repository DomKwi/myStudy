//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
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
    
    mutating func nextStory(userChoice: String) {
        let currentStory = example[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = 1
        } else if userChoice == currentStory.choice2 {
            storyNumber = 2
        }
    }
}
