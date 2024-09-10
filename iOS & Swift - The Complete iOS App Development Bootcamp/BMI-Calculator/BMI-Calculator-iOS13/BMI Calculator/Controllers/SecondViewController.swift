//
//  ViewContoller.swift
//  BMI Calculator
//
//  Created by Dominik Kwiecień on 07/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
