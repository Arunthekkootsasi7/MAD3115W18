//
//  ViewController.swift
//  day_6 part2
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var moodSegment: UISegmentedControl!
    @IBOutlet weak var imgMood: UIImageView!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var lblStepper: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var lblSliderValue: UILabel!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var lblProgress: UILabel!
    
    @IBAction func buttonStart(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
    @IBAction func buttonStop(_ sender: UIButton) {
   activityIndicator.stopAnimating() }
    
    @IBAction func myStepperc(_ sender: UIStepper) {
        lblStepper.text = String(myStepper.value)
    }
    @IBAction func mySliderc(_ sender: UISlider) {
        
        lblSliderValue.text = String(mySlider.value)
    }
    var moodImages:[UIImage] = [UIImage(named:"cat.jpeg")!, UIImage(named:"angry.jpeg")!, UIImage(named:"sad.jpeg")!]
    
    var progressTimer = Timer()
    
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        
        print("selected:\(moodSegment.selectedSegmentIndex)")
        imgMood.image = moodImages[moodSegment.selectedSegmentIndex]

    }
    
    @IBAction func btnProgressAction(_ sender: UIButton) {
        self.myProgressView.progress += 0.01
        
        self.lblProgress.text = "\(Int(self.myProgressView.progress * 100))%"
        
        if self.myProgressView.progress >= 1 {
            self.progressTimer.invalidate()

    }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading theview, typically from a nib.
        
        myProgressView.progress = 0.0
        lblProgress.text = "\(Int(myProgressView.progress * 100))%"
        self.progressTimer = Timer.scheduledTimer(timeInterval : 0.3, target: self , selector: #selector(self.btnProgressAction), userInfo: nil, repeats: true )

        }
        
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

