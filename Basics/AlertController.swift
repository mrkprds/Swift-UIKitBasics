//
//  AlertController.swift
//  Basics
//
//  Created by Mark Patrick Perdon on 3/25/20.
//  Copyright © 2020 Mark Patrick Perdon. All rights reserved.
//

import Foundation
import UIKit

struct AlertController {
    static func showTextFieldEmptyAlert(on vc: UIViewController, withTitle title: String, message: String){
        let ac = UIAlertController(
            title: title,
            message: message ,
            preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(
            title: "Close",style: .destructive))
        
        vc.present(ac, animated: true)
    }
    
}
