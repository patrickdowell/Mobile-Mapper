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
    let address = "Mount Rushmore"
    let geocoder = CLGeocoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude = 42.15704
        let longitude = -88.14812
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        barringtonAnnotation.coordinate = coordinate
        mapView.addAnnotation(barringtonAnnotation)
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            for placemark in placemarks! {
                let annotation = MKPointAnnotation()
                annotation.coordinate = (placemark.location?.coordinate)!
                annotation.title = placemark.name
                self.mapView.addAnnotation(annotation)
            }
        }
    }


}

