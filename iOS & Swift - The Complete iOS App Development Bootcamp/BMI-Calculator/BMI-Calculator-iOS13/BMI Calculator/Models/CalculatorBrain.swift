//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dominik Kwiecień on 18/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import SwiftUI

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            print("You are underweight")
        } else if bmiValue < 24.9 {
            print("You are healthy")
        } else {
            print("You are overweight")
        }
        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##Color#>)
    
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
