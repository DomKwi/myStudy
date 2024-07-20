//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var falseButton1: UIButton!
    @IBOutlet weak var falseButton2: UIButton!
    @IBOutlet weak var correctAnswerButton: UIButton!
    
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
        timer = Timer.scheduledTimer(withTimeInterval: 0.8, repeats: false) {
            timer in
            self.quizBrain.nextQuestion()
            self.updateUI()
        }
    }
    
    func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        
        correctAnswerButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        falseButton1.backgroundColor = UIColor.clear
        falseButton2.backgroundColor = UIColor.clear
        
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        
        progressBar.progress = quizBrain.getProgress()
        print(progressBar.progress)
    }
    
}
