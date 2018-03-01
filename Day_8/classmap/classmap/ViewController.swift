//
//  ViewController.swift
//  classmap
//
//  Created by MacStudent on 2018-03-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    //let lambtonCollegeLocation = CLLocation(latitude:43.773257,longitude: -79.335899)
    
    let regionRadius: CLLocationDistance = 100
    
    
    
    let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        myMap.mapType = MKMapType.standard
        
        // centerMapOnLocation(location: lambtonCollegeLocation ,title: "",subTitle: "")
        
        
        
        
        
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.requestWhenInUseAuthorization()
        
        
        
        if(CLLocationManager.locationServicesEnabled()){ locationManager.stopUpdatingLocation()}
        
        
        
        
        
        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
        
        
        
        
    }
    
    func centerMapOnLocation(location: CLLocation,title: String,subTitle: String){
        
        
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        
        //focus the map on specified location
        
        
        
        myMap.setRegion(coordinateRegion,animated:true)
        
        
        
        // Drop a pin at users Current Location
        
        
        
        let myAnnotation:MKPointAnnotation = MKPointAnnotation()
        
        myAnnotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude);
        
        myAnnotation.title = title
        
        myAnnotation.subtitle = subTitle
        
        myMap.addAnnotation(myAnnotation)
        
        
        
        
        
    }
    
    
    
}

extension ViewController:
    
CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print("error:: \(error.localizedDescription)")
        
        
        
    }
    
    func locationManager(_ _manager:CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus){
        
        if status == .authorizedWhenInUse {
            
            locationManager.requestLocation()
            
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.first != nil {
            
            print("location::  \(locations)")
            
        }
        
    
    centerMapOnLocation(location: locationManager.location!, title: "current location", subTitle: "")
    
}

}
