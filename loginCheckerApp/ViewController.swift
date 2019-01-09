//
//  ViewController.swift
//  LoginChecker
//
//  Created by Aseel Alshohatee on 1/6/19.
//  Copyright © 2019 Aseel Alshohatee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameMessage: UILabel!
    @IBOutlet weak var passwordMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func LogInButton(_ sender: Any) {
        
        if userNameTextField.text == ""{
            userNameMessage.text = "Please Enter the email!!"
        }else if userNameTextField.text!.contains(" "){
            userNameMessage.text = "make sure there is no space in Your Email."
        }else if userNameTextField.text!.hasSuffix("@yahoo.com"){
            userNameMessage.text = "Yahoo is good"
        } else if userNameTextField.text!.hasSuffix("@gmail.com"){
            userNameMessage.text = "Gmail is good"
        }else {
            userNameMessage.text = "wrong input or the email does not exit"
        }
        
        
        if passwordTextField.text == ""{
            passwordMessage.text = "Please Enter the password!!"
        } else if (passwordTextField.text?.count)! < 7 {
            passwordMessage.text = "Your password is too short"
        }else if (passwordTextField.text?.count)! > 10 {
            passwordMessage.text = "Your password is strong"
        } else {
            passwordMessage.text = "okay password"
        }
        
        
        
    }
    
}
