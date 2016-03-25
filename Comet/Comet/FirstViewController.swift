//
//  FirstViewController.swift
//  Comet
//
//  Created by Andre Plaut on 3/24/16.
//  Copyright © 2016 Andre Plaut. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var accomplishmentOne: UITextField!
    @IBOutlet weak var accomplishmentTwo: UITextField!
    @IBOutlet weak var accomplishmentThree: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accomplishmentOne.delegate = self
        accomplishmentTwo.delegate = self
        accomplishmentThree.delegate = self
    }
    
    // Mark: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

