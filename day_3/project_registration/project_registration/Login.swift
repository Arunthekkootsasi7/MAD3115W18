//
//  Login.swift
//  project_registration
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class Login: UIViewController {

    
    
    @IBOutlet weak var Login: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBAction func buttonlogin(_ sender: UIBarButtonItem) {
        
        let Email = Login.text
        let password = Password.text
    
    if(Email == "arun" && password == "arun123")
    {
        let infoAlert = UIAlertController(title: "login successfull", message: "Authenticated", preferredStyle: .alert)
      
        infoAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(infoAlert, animated: true, completion: nil)
        }
        else
    {
        let infoAlert1 = UIAlertController(title: "Login Unsuccesfull", message: "try again", preferredStyle: .alert)
     infoAlert1.addAction(UIAlertAction(title: "OK no probs", style: .default, handler: nil))
        self.present(infoAlert1, animated: true, completion: nil)
        }
    }
        
    @IBAction func RegisterButton(_ sender: UIBarButtonItem) {
       
        let reg: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let regc = reg.instantiateViewController(withIdentifier: "RegistrationScreen")
    navigationController?.pushViewController(regc, animated: true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

