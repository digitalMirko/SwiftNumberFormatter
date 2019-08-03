//
//  ViewController.swift
//  Swift Number Formatter
//
//  Created by Mirko Cukich on 8/2/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
// Swift Number Formatter - Demo 1 of 30

import UIKit

class ViewController: UIViewController {
    
    // counter label
    @IBOutlet weak var counterLabel: UILabel!
    
    // number formatter
    let formatter = NumberFormatter()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // no decimals just integers
        formatter.allowsFloats = false
    }
    
    // adds 1 number to current count
    @IBAction func tapAwayButton(_ sender: UIButton) {
        // number out of string
        if let numberFromLabel = formatter.number(from: counterLabel.text!) {
            // increments number in label by 1
            counterLabel.text = "\(numberFromLabel.intValue + 1)"
        }
        
    }
    // resets count to 0
    @IBAction func resetButton(_ sender: Any) {
        counterLabel.text = "\(0)"
        
    }
    

}

