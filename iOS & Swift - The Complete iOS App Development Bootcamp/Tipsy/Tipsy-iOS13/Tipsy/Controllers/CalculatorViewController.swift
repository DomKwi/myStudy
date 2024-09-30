//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 1.0
    var numberOfPeople = 2
    var billTextValue: Double = 0.0
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let typeValueByName = String(buttonTitle.dropLast())
        let TipProcentage = Double(typeValueByName)!
        tip = TipProcentage / 100
        
        billTextField.endEditing(true)

    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        numberOfPeople = Int(sender.value)
        splitNumberLabel.text = String(numberOfPeople)
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tip)
        
        billTextValue = Double(billTextField.text!) ?? 0.0
        
        let result = billTextValue * (1 + tip) / Double(numberOfPeople)
        print(result)
        
        finalResult = String(format: "%.2f", result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {

        }
    }
}

