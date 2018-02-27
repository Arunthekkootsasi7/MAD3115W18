//
//  ViewController.swift
//  Day_6
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TxtCarPlate: UITextField!
    
    
    @IBOutlet weak var TxtCarColor: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func btnAddNew(_ sender: Any){
        
    }
    
    
        @IBAction func btnListAll(_ sender: UIButton)
    {
        self.writePropertyList()
    }
    
    func writePropertyList()
    
    {

    let myCar = NSMutableDictionary()
        
    myCar["CarPlate"] = self.TxtCarPlate.text
    myCar["CarColor"] = self.TxtCarColor.text
    
    if let plistPath = Bundle.main.path(forResource: "Cars",ofType:"plist")
    {
        let carsplist = NSMutableArray(contentsOfFile: plistPath)
        carsplist?.add(myCar)
        if(carsplist?.write(toFile: plistPath, atomically: true))!{
            print("carslist:\(String(describing:carsplist))")
        }
    }
    else {
        print("Unable to locate plist file")
        }

        }}
