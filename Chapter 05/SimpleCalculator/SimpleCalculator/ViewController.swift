//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Gaurang on 21/01/2021.
//  Copyright © 2021 Gaurang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNumberTextField.delegate = self
        secondNumberTextField.delegate = self
        resultTextField.delegate = self
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        if let firstValue = Int(firstNumberTextField.text ?? "0"), let secondValue = Int(secondNumberTextField.text ?? "0") {
            resultTextField.text = String(firstValue + secondValue)
        }
    }
    
    @IBAction func subtractButtonClicked(_ sender: Any) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //hides the keyboard
        return true
    }
}

