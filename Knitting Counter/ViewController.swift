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
        
        do {
            let count = try KnittingCount()
            rowCount.text = "\(count.rowCount)"
            patternCount.text = "\(count.patternCount)"
        } catch KnittingCount.DecodingError.missingFile {
            rowCount.text = "0"
            patternCount.text = "0"
        } catch {
            print("Unexpected error: \(error).")
        }
    }
    
    func save() {
        let rowCountString = rowCount.text ?? "0"
        let patternCountString = patternCount.text ?? "0"
        if let rowCount = Int(rowCountString), let patternCount = Int(patternCountString) {
            let count = KnittingCount(rowCount: rowCount, patternCount: patternCount)
            do {
                try count.save()
            } catch KnittingCount.EncodingError.saving {
                print("Saving error.")
            } catch {
                print("Unexpected error: \(error).")
            }
        }
    }

    @IBAction func rowIncrementTouched(_ sender: Any) {
        let rowCountString = rowCount.text ?? "0"
        if let rowCountInt = Int(rowCountString) {
            rowCount.text = "\(rowCountInt + 1)"
        }
        save()
    }
    
    @IBAction func rowDecrementTouched(_ sender: Any) {
        let rowCountString = rowCount.text ?? "0"
        if let rowCountInt = Int(rowCountString) {
            if rowCountInt > 0 {
                rowCount.text = "\(rowCountInt - 1)"
            }
        }
        save()
    }
    
    @IBAction func rowResetTouched(_ sender: Any) {
        rowCount.text = "0"
        save()
    }
    
    @IBAction func patternIncrementTouched(_ sender: Any) {
        let patternCountString = patternCount.text ?? "0"
        if let patternCountInt = Int(patternCountString) {
            patternCount.text = "\(patternCountInt + 1)"
        }
        save()
    }
    
    @IBAction func patternDecrementTouched(_ sender: Any) {
        let patternCountString = patternCount.text ?? "0"
        if let patternCountInt = Int(patternCountString) {
            if patternCountInt > 0 {
                patternCount.text = "\(patternCountInt - 1)"
            }
        }
        save()
    }
    
    @IBAction func patternResetTouched(_ sender: Any) {
        patternCount.text = "0"
        save()
    }
    
    
    
}

