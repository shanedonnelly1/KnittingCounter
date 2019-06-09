//
//  ViewController.swift
//  Knitting Counter
//
//  Created by Shane Donnelly on 09/06/2019.
//  Copyright © 2019 Shane Donnelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rowCount: UITextField!
    @IBOutlet weak var patternCount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rowCount.text = "0"
        patternCount.text = "0"
    }

    @IBAction func rowIncrementTouched(_ sender: Any) {
        let rowCountString = rowCount.text ?? "0"
        if let rowCountInt = Int(rowCountString) {
            rowCount.text = "\(rowCountInt + 1)"
        }
    }
    
    @IBAction func rowDecrementTouched(_ sender: Any) {
        let rowCountString = rowCount.text ?? "0"
        if let rowCountInt = Int(rowCountString) {
            if rowCountInt > 0 {
                rowCount.text = "\(rowCountInt - 1)"
            }
        }
    }
    
    @IBAction func rowResetTouched(_ sender: Any) {
        rowCount.text = "0"
    }
    
    @IBAction func patternIncrementTouched(_ sender: Any) {
        let patternCountString = patternCount.text ?? "0"
        if let patternCountInt = Int(patternCountString) {
            patternCount.text = "\(patternCountInt + 1)"
        }
    }
    
    @IBAction func patternDecrementTouched(_ sender: Any) {
        let patternCountString = patternCount.text ?? "0"
        if let patternCountInt = Int(patternCountString) {
            if patternCountInt > 0 {
                patternCount.text = "\(patternCountInt - 1)"
            }
        }
    }
    
    @IBAction func patternResetTouched(_ sender: Any) {
        patternCount.text = "0"
    }
    
    
    
}

