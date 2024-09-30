//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Dominik Kwiecień on 30/09/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    var result = "0.0"
    var tip = 0
    var split = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = "\(result)"
        settingLabel.text = "Split bettween \(split) people, with \(tip)% tip"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
