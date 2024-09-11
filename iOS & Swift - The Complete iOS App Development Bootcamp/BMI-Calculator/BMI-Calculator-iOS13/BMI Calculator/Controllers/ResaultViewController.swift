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
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}
