//
//  LocationViewController.swift
//  Restaurant
//
//  Created by Nguyen on 9/19/19.
//  Copyright © 2019 Nguyen. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocationViewController: UIViewController,CLLocationManagerDelegate {
     // MARK: - ItemTabbar
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: "Location", image: UIImage(named: "location"), tag: 3)
    }
    
    // MARK: - IBOutlet
    @IBOutlet weak var mapView: MKMapView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        //Location
        let location = CLLocationCoordinate2D(latitude: 16.073582,
                                              longitude: 108.242978)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Thetemptation"
        annotation.subtitle = "Thetemptation Restaurant"
        mapView.addAnnotation(annotation)
        
        
       
    }
    

}
