//
//  UIDelegateController.swift
//  Home Work 2.4
//
//  Created by Macbook on 09.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

// MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField {
            passwordTextField.resignFirstResponder()
        }
        
        return true
    }
    
    //Только символы строки без цифр для login
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == loginTextField {
        let allowedCharacters = CharacterSet.letters
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
          guard let text = textField.text else { return }
          if text.count > 16 {
              textField.text?.removeLast()
          }
      }
    
}
