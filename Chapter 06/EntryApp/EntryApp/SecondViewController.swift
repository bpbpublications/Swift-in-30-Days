//
//  SecondViewController.swift
//  EntryApp
//
//  Created by Gaurang on 06/02/2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = person!.firstName
    }
}
