//
//  ViewController.swift
//  parking10
//
//  Created by John Mac on 9/22/16.
//  Copyright © 2016 John Wetters. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate,
CLLocationManagerDelegate {
    
    
    
    /* Outlet to mapView  */
    @IBOutlet weak var mapView: MKMapView!
     /* Outlet to mapView  */
    
    let locationManager = CLLocationManager()
    //initialize location mnanager
    
    
    
    

    override func viewDidLoad() {
      
        
         super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        print("\n")
        
        print("request authorization\n")
        
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
       
        
        locationManager.startUpdatingLocation()
        
        print("start updating location\n")
        
        mapView.showsUserLocation = true
        mapView.userTrackingMode = MKUserTrackingMode.follow
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

