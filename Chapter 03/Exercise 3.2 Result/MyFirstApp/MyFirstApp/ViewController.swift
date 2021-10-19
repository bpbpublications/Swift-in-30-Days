//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Gaurang on 14/12/2020.
//  Copyright © 2020 Gaurang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstNameTextField.text = "John"
        lastNameTextField.text = "Mayer"
        emailTextField.text = "johnM@apple.com"
        saveButton.setTitle("Change", for: .normal)
    }

    // MARK: Button Clicks
    @IBAction func saveClicked(_ sender: Any) {
        firstNameTextField.text = "Michelle"
        lastNameTextField.text = "Boyer"
        emailTextField.text = "michelleB@test.com"
    }
    
}

