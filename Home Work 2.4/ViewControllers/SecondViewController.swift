//
//  SecondViewController.swift
//  Home Work 2.4
//
//  Created by Macbook on 07.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var helloMessage: String!
    
    @IBOutlet var helloLabel: UILabel!
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = "Hello, \(helloMessage ?? "User") 👋"
        
        view.setGradientBackground(colorOne: Colors.lightGrey, colorTwo: Colors.veryDarkGrey)
    }
    
    deinit {
    }
}
