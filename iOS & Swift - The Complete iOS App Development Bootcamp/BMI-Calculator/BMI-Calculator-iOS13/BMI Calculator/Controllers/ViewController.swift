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
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = sender.value
        heightLabel.text = String(format: "%.2f", heightValue) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = sender.value
        weightLabel.text = String(format: "%.0f", weightValue) + "Kg"
    }
    
    @IBAction func calculatedPressed(_ sender: Any) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        let bmi = weightValue / (heightValue * heightValue)
        let result = String(format: "%.1f", bmi)
        print(result)
        
        //initialization of the second view
        let secondVC = SecondViewController()

    }
    
}
