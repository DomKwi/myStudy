//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dominik Kwiecień on 18/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
