//
//  ViewController.swift
//  Home Work 2.4
//
//  Created by Macbook on 06.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var scrollView: UIScrollView!
  
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        loginTextField.delegate = self
        passwordTextField.delegate = self
        
        registerForKeyboardNotification()
        hideKeyboardWhenTappedAround()
      
    }
    
   deinit {
          removeForKeyboardNotification()
      }
    
    // MARK: - IB Actions
    @IBAction func logIn() {
//        if loginTextField.text != "Alex", passwordTextField.text != "qwerty" {
//            showAllert(with: "🤗", and: "Didn't guess")
//        }
       
        guard loginTextField.text == "Alex", passwordTextField.text == "qwerty" else {
            return showAllert(with: "🤗", and: "Didn't guess")
        }
        
    }
    
    @IBAction func userName() {
        showAllert(with: "WooOopsS😱", and: "Youre user name Alex 😎")
    }
    
    @IBAction func userPassword(_ sender: Any) {
        showAllert(with: "Unbelievable🤯", and: "Youre password qwerty 🧠")
    }
    
    @IBAction func logout( segue: UIStoryboardSegue){
        loginTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    //MARK: - keyboardWillShowHide
    func removeForKeyboardNotification() {
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillShowNotification,
                                                  object: nil)
        
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillHideNotification,
                                                  object: nil)
    }
    
    func registerForKeyboardNotification(){
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(kbWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(kbwWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        
    }
    
    @objc func kbWillShow(_ notification: Notification) {
        let userInfo = notification.userInfo
        let kbFrameSize = (
            userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue
            ).cgRectValue
        
        scrollView.contentOffset = CGPoint(x: 0, y: kbFrameSize.height)
    }
    
    @objc func kbwWillHide(_ notification: Notification) {
        scrollView.contentOffset = CGPoint.zero
    }
    
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let secondVC = tabBarController.viewControllers?.first as? SecondViewController else {
            return }
        secondVC.helloMessage = loginTextField.text
        
    }
  
}
