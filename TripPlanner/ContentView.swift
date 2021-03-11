//
//  ContentView.swift
//  TripPlanner
//
//  Created by Mayank Gandhi on 3/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        Color.black
        MapViewController.MapViewRepresentable()
      }
      .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
