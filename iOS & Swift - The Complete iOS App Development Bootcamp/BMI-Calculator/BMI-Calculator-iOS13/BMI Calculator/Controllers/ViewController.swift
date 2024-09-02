//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        print(sender.value)
        let heightValue = sender.value
        heightLabel.text = "\(Float(heightValue))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        print(sender.value)
    }
    
}

