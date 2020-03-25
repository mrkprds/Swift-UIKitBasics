//
//  ViewController.swift
//  Basics
//
//  Created by Mark Patrick Perdon on 3/25/20.
//  Copyright © 2020 Mark Patrick Perdon. All rights reserved.
//
//lastNameField
//someTextField
//someLabel
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var someLabel: UILabel!
    @IBOutlet weak var someTextField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
  
        
//adding label prgramatically
//        label.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
//        label.text = "Hello World"
//        view.addSubview(label)

        
        //someTextField.becomeFirstResponder() //makes keyboard pop up on start 
        someTextField.delegate = self
        someTextField.placeholder = "Enter Some Text"
        lastNameField.placeholder = "Enter Last Name"
    }

    @IBAction func someButton(_ sender: Any) {
       submitTextField()
    }
    
    func submitTextField(){
        guard let someTextFieldValue = someTextField.text, !someTextFieldValue.isEmpty else{
        AlertController.showTextFieldEmptyAlert(
            on: self,
            withTitle: "Text field is empty",
            message: "Please type something")
            return
        }
        
        guard let lastNameValue = lastNameField.text, !lastNameValue.isEmpty else {
            AlertController.showTextFieldEmptyAlert(
                on: self,
                withTitle: "Last name field is empty",
                message: "Please type something")
                return
        }
        
        someLabel.text = "some TF = \(someTextFieldValue) Last Name = \(lastNameValue)"
        someLabel.font = UIFont(name: "System Regular", size: 10.0)
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //closes keyboard
        view.endEditing(true)
    }
 
    
    //do something when return button in keyboard is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        submitTextField()
        return false
    }
    
    @IBAction func showView(_ sender: Any) {
        let vc = (storyboard?.instantiateViewController(identifier: "HardCode") as? HardCodeViewController)!
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

