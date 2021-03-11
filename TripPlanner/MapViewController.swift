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
  override func viewDidLoad() {
    super.viewDidLoad()

    let url = URL(string: "mapbox://styles/mapbox/streets-v11")
    let mapView = MGLMapView(frame: view.bounds, styleURL: url)
    mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    mapView.setCenter(CLLocationCoordinate2D(latitude: 59.31, longitude: 18.06), zoomLevel: 9, animated: false)
    view.addSubview(mapView)
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
