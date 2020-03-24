//
//  ViewController.swift
//  Basics
//
//  Created by Mark Patrick Perdon on 3/25/20.
//  Copyright © 2020 Mark Patrick Perdon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someTextField: UITextField!
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        label.text = "Hello World"
        view.addSubview(label)
        
        someLabel.text = "I've now changed the label"
        
        someTextField.becomeFirstResponder()
    }

    @IBAction func someButton(_ sender: Any) {
        
        guard let someTextFieldValue = someTextField.text, !someTextFieldValue.isEmpty else{
            let ac = UIAlertController(
                title: "Text field is empty",
                message: "Please enter some text",
                preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(
                title: "Close",style: .destructive))
            
            present(ac, animated: true)
    
            return
        }
        someLabel.text = someTextFieldValue
        someTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //closes keyboard
        view.endEditing(true)
    }
    
}

