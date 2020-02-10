//
//  UIAlertController.swift
//  Home Work 2.4
//
//  Created by Macbook on 09.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

//MARK: - UIAlertcontroller
extension UIViewController {

     func showAllert(with title: String, and message: String) {

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default)

        alert.addAction(okAction)
        present(alert, animated: true)

    }
}


