//
//  ViewController.swift
//  A2903helloapp
//
//  Created by 申潤五 on 2022/9/3.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numDispLabel: UILabel!
    var lastNumber = 0
    var needClear = false
    
    @IBAction func numberClick(_ sender: UIButton) {
        if needClear {
            numDispLabel.text = "0"
            needClear = false
        }
        let string = sender.titleLabel?.text ?? ""
        let orgString = numDispLabel.text ?? ""
        let targetNumberString = orgString + string
        let targetNumber = Int(targetNumberString) ?? 0
        numDispLabel.text = "\(targetNumber)"
    }
    @IBAction func clearAction(_ sender: Any) {
        numDispLabel.text = "0"
        lastNumber = 0
    }
    @IBAction func addAction(_ sender: Any) {
        let currentNumber = Int(numDispLabel.text ?? "0") ?? 0
        let ans = lastNumber + currentNumber
        numDispLabel.text = "\(ans)"
        lastNumber = ans
        needClear = true
    }
}

