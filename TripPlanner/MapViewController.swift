//
//  MapViewController.swift
//  TripPlanner
//
//  Created by Mayank Gandhi on 3/11/21.
//

import UIKit
import SwiftUI
import Mapbox



class MapViewController: UIViewController {

  var mapView: MGLMapView?
  let defaultZoomLevel: Double = 10

  override func viewDidLoad() {
    super.viewDidLoad()
    let url = URL(string: "mapbox://styles/mapbox/streets-v11")
    let mapView = MGLMapView(frame: view.bounds, styleURL: url)
    mapView.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: defaultZoomLevel, animated: false)

    self.mapView = mapView
    mapView.showsUserHeadingIndicator = true
    mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

    mapView.delegate = self
    view.addSubview(mapView)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    if let userLocation = mapView?.userLocation?.coordinate {
      print(userLocation)
      mapView?.setCenter(CLLocationCoordinate2D(latitude: userLocation.latitude, longitude: userLocation.longitude), zoomLevel: defaultZoomLevel, animated: false)
    } else {
      mapView?.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: defaultZoomLevel, animated: false)
    }
  }
  
}

extension MapViewController {
  struct MapViewRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = MapViewController

    func makeUIViewController(context: Context) -> MapViewController {
      MapViewController()
    }

    func updateUIViewController(_ uiViewController: MapViewController, context: Context) { }

  }
}
