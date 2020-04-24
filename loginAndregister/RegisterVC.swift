//
//  RegisterVC.swift
//  loginAndregister
//
//  Created by Alaa Adel on 9/21/19.
//  Copyright © 2019 Alaa Adel. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBOutlet weak var passwordReTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func RegisterBtn(_ sender: Any) {
        let email = emailTxtField.text
        let password = passwordTxtField.text
        let passwordRe = passwordReTxtField.text
        
        guard email?.isEmpty != true else {
            print("email is requred!")
            return
        }
        
        guard password?.isEmpty != true else {
            print("password is requred")
            return
        }
        guard password == passwordRe else {
            print("check your password!")
            return
        }
        
        // save data
        
        UserDefaults.standard.setValue(email, forKey: "email")
        UserDefaults.standard.setValue(password, forKey: "password")
        UserDefaults.standard.synchronize()
        
        
        
        
        
    }
}
