//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True, False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        timer.invalidate()
        
        if userGotItRight {
            print("Right!")
            sender.backgroundColor = UIColor.green
        } else {
            print("Wrong!")
            sender.backgroundColor = UIColor.red
        }
        
        
            timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) {
            timer in
            self.updateUI()
        }
    }
    
    func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
        print(progressBar.progress)
    }

}


