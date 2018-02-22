//
//  RegisterVC.swift
//  day_3
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit


class RegisterVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.citylist.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,forComponent component: Int
        ) -> String?
    {
        return self.citylist[row]
    }


    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtPostalcode: UITextField!
    
    @IBOutlet weak var txtContactNo: UITextField!
    
    @IBOutlet weak var Datepicker: UIDatePicker!
    
    @IBOutlet weak var Pickerview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var citylist: [String] = ["northyork","vancouver","ottawa","toronto"]
    
    var selectedcityindex: Int = 0
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Register"
        
        
        let btnsubmit = UIBarButtonItem(title: "submit", style: .plain, target: self, action: #selector(displayValues))
        
        self.navigationItem.rightBarButtonItem = btnsubmit
        
    }
    
    @objc private func displayValues(){
        self.selectedcityindex = self.citypicker.selectedRow(inComponent: 0)
        
        let alldata: String = "\(self.txtname.text!) \n \(self.txtcontactnumber.text!) \n \(self.dateofbirth.date) \n \(self.citylist[selectedcityindex]) \n \(self.txtemail.text!) "
        
        let infoalert = UIAlertController(title: "VARIFY", message: alldata, preferredStyle: .alert)
        
        infoalert.addAction(UIAlertAction(title: "CONFIRM", style: .default, handler: {_ in self.displayWelcomeScreen()}))
        
        self.present(infoalert, animated: true)
        
    }
    func displayWelcomeScreen(){
        let welsb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let welvc = welsb.instantiateViewController(withIdentifier: "welcomescreen")
        
        navigationController?.pushViewController(welvc, animated: true)
    }
    
    
    

