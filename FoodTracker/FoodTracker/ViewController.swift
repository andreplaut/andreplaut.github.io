//
//  ViewController.swift
//  FoodTracker
//
//  Created by Andre Plaut on 3/23/16.
//  Copyright © 2016 Andre Plaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
    }

       // MARK: Properties
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

