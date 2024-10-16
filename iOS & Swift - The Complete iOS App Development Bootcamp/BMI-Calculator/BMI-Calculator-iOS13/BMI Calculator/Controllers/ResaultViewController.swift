//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dominik Kwiecień on 11/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResaultViewController: UIViewController {
    
    //create a variable for calculations passed from calculateViewController
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //use of the built-in dissmis function to return to the previous screen
        self.dismiss(animated: true, completion: nil)
    }
}
