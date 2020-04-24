//
//  ViewController.swift
//  loginAndregister
//
//  Created by Alaa Adel on 9/21/19.
//  Copyright © 2019 Alaa Adel. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var PasswordTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func LoginBtn(_ sender: Any) {
        
        let email = emailTxtField.text
        let password = PasswordTxtField.text
        
        let emailStored = UserDefaults.standard.string(forKey: "email")
        let passwordStored = UserDefaults.standard.string(forKey: "password")
        
        if emailStored == email {
            if passwordStored == password {
                
                 print("Login is success")
            }
        }
        
    }
    
}

