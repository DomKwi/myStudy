//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
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
        weightLabel.text = String(format: "%.0f", weightValue) + "kg"
    }
    
    
    @IBAction func calculatedPressed(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        //adding a view using the segue identifier goToResult
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //preparation for the segue, if the segue is the same as our path to the resultviewcontroller then pass the data bmi
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResaultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue() {
                
            }
        }
            
            //The creation of a distinction on the path from the button is sent data to the function is made to distinguish where they are to go. Then pass the data to the result view and assign the value to bmiValue
        }
    }

