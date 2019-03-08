//
//  ViewController.swift
//  Mobile Mapper
//
//  Created by Patrick Dowell on 3/8/19.
//  Copyright © 2019 Patrick Dowell. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    let barringtonAnnotation = MKPointAnnotation()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude = 42.15704
        let longitude = -88.14812
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        barringtonAnnotation.coordinate = coordinate
        mapView.addAnnotation(barringtonAnnotation)
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}

