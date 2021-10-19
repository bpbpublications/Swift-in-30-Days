//
//  ViewController.swift
//  EntryApp
//
//  Created by Gaurang on 04/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    var names : [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Entry App"
        setDefaultValues()
    }
   
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showSecondView", sender: self)
//        let person = Person(firstName: firstNameTextField.text, lastName: lastNameTextField.text, phoneNumber: phoneNumberTextField.text, email: emailTextField.text)
//        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//        secondViewController.person = person //your hint
//        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func setDefaultValues () {
        self.firstNameTextField.text = "John"
        self.lastNameTextField.text = "Cena"
        self.phoneNumberTextField.text = "+1 23 456 78"
        self.emailTextField.text = "jc@gmail.com"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondView" {
            
            let person = Person(firstName: firstNameTextField.text, lastName: lastNameTextField.text, phoneNumber: phoneNumberTextField.text, email: emailTextField.text)

            let secondViewController = segue.destination as! SecondViewController
            secondViewController.person = person
        }
    }
}

