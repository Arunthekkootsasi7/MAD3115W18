//
//  ViewController.swift
//  loginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func buttonLogin(_ sender: UIBarButtonItem) {
    
    
    
    let Email = txtEmail.text
    let Password = txtPassword.text
    
    if (Email == "test" && Password == "test")
    {
    let infoAlert = UIAlertController(title: "Login Successful", message: "You are authenticated", preferredStyle: .alert)
    
    infoAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
    self.present(infoAlert, animated: true, completion: nil)
    }
    }
        

    
  
    
    
    
   
    
    
  
    
    
    
    @IBAction func btnRegister(_ sender: UIBarButtonItem) {
    
    

        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
        
        //instantiate means we are picking the specific one from the main means selecting the 3rd from 10
        
      //  self.present(registerVC, animated: true, completion: nil)
        
        navigationController?.pushViewController(registerVC, animated: true)
    }
        
    
}

