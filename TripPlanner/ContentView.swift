//
//  ContentView.swift
//  TripPlanner
//
//  Created by Mayank Gandhi on 3/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(spacing: .none) {
        MapViewController.MapViewRepresentable()
          .frame(width: .screenWidth, height: .screenHeight * 0.75)
        Color.orange
          .frame(width: .screenWidth, height: .screenHeight * 0.25)
      }
      .edgesIgnoringSafeArea(.all)
    }
}
