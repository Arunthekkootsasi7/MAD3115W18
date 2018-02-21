//
//  RegisterVCViewController.swift
//  loginRegister
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterVCViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool)
    //viewDidLoad()
    {
        self.navigationItem.title = "Register"
        
        let btnSubmit = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnSubmit
        //super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc private func displayValues() {
        let infoAlert =
            UIAlertController(title: "Verify", message: "Please verify your detials", preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: nil))
        
        self.present(infoAlert, animated: true)
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
