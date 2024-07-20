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
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //correct, not correct
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
        
        button3.backgroundColor = UIColor.clear
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        
        button1.setTitle("\(quizBrain.getAnswerOptions()[0])", for: .normal)
        button2.setTitle("\(quizBrain.getAnswerOptions()[1])", for: .normal)
        button3.setTitle("\(quizBrain.getAnswerOptions()[2])", for: .normal)
       
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        
        progressBar.progress = quizBrain.getProgress()
        print(progressBar.progress)
    }
    
}
