//
//  loginVC.swift
//  Midterm
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class loginVC: UIViewController {
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
 
    @IBOutlet weak var txtlogin: UITextField!
    @IBOutlet weak var btnlogin: UIButton!
    @IBOutlet weak var switchremember: UISwitch!
    @IBAction func loginbtn(_ sender: UIButton)
        
     {
        
        if userAuthenticates() {
            displayInventoryScreen()
            
        }
        else{
            let infoAlert = UIAlertController(title: "Invalid", message:"username or password incorrect" , preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Retry", comment: "Default action"), style: .destructive, handler: nil))
            
            self.present(infoAlert, animated: true, completion: nil)
        }
        
    }
    
    func userAuthenticates() -> Bool{
        if (txtUsername.text == "test" && txtPassword.text == "test"){
            return true
        }
        else{
            return false
        }
    }
    
    
    func displayInventoryScreen(){
        let menuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = menuSB.instantiateViewController(withIdentifier: "inventories")
        navigationController?.pushViewController(menuVC, animated: true)
    }

   
    
    @IBAction func switchRemember(_ sender: UISwitch) {
        
        
     if self.switchremember.isOn {
           let saveAlert = UIAlertController(title: "Saved", message: "Your data is saved", preferredStyle: .alert)
    
           saveAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Data saved"), style: .default, handler: nil))
   
            
            self.present(saveAlert, animated: true, completion: nil)
       }
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
