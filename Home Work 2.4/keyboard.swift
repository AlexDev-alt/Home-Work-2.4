//
//  keyboard.swift
//  Home Work 2.4
//
//  Created by Macbook on 09.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action:#selector(UIViewController.dismissKeyboard) )
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
  
}


