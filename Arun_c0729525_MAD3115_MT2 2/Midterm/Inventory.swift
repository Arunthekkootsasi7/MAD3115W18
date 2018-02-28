//
//  Inventory.swift
//  Midterm
//
//  Created by MacStudent on 2018-02-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class Inventory: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    @IBOutlet weak var lblProductNumber: UILabel!
    
    @IBOutlet weak var lblProductName: UILabel!
    
    @IBOutlet weak var productnumberpicker: UIPickerView!
    
    @IBOutlet weak var productnamepicker: UIPickerView!
    
    
    @IBOutlet weak var myStepper: UIStepper!
    
    @IBOutlet weak var lblStepper: UILabel!
    
    @IBOutlet weak var myImageview: UIImageView!
    
    var productnumber:[String] = ["001","002","003"]
    var productname:[String] = ["Bat","Ball","Gloves"]
      var images = ["Bat.jpeg","Ball.jpeg","Gloves.jpeg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productnamepicker.tag = 0
        productnamepicker.tag = 0
        self.productnumberpicker.delegate = self
        self.productnumberpicker.dataSource = self
        self.productnamepicker.delegate = self
        self.productnamepicker.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        if pickerView == productnumberpicker {
            return 1
        }
        else if pickerView == productnamepicker {
            return 1
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == productnumberpicker{
            return self.productnumber.count
        }
        else {
            
           
            return self.productname.count
        }
        
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int, forComponent component: Int) -> String? {
     
        var temp = ""
        
        if pickerView == productnumberpicker{
            temp = self.productnumber[row]
        }
    
        else {
    temp = self.productname[row]
            myImageview.image = UIImage(named: images[row])
    }
    return temp
    
        }

    
    @IBAction func StepperAction(_ sender: UIStepper) {
        lblStepper.text = String(myStepper.value)
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
