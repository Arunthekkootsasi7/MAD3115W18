//
//  ViewController.swift
//  map
//
//  Created by MacStudent on 2018-03-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    // location setting/ create an instance means lat and long
    
    let lambtonCollegeLocation = CLLocation(latitude: 43.773257, longitude: -79.335899)
    
    let regionRadius : CLLocationDistance = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myMap.mapType = MKMapType.standard
        
        centreMapOnLocation(location: lambtonCollegeLocation, title: "Toronto", subTitle: "265 Yorkland Blvd North")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func centreMapOnLocation(location: CLLocation, title: String, subTitle: String)
    {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        
        myMap.setRegion(coordinateRegion,animated: true)
        
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude,location.coordinate.longitude);
        myAnnotation.title = title
        myAnnotation.subtitle = subTitle
        
        myMap.addAnnotation(myAnnotation)
    }
}

