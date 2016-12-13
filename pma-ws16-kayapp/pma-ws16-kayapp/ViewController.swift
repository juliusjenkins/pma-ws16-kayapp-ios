//
//  ViewController.swift
//  pma-ws16-kayapp
//
//  Created by hdm on 13/12/16.
//  Copyright © 2016 hdm. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!



    var locationManager: CLLocationManager!
    
    @IBAction func LocationAction(_ sender: AnyObject) {
        
        
        
        if(CLLocationManager.locationServicesEnabled()){
            
            
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
                super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
      
      
}

  
    
    
    
    
    func locationManager(manager:CLLocationManager!, didUpdateLocation location: [AnyObject]!){
        
        let location = location.last as! CLLocation
        
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        
        self.mapView.setRegion(region, animated: true)
    }
    
    

    
    

}

