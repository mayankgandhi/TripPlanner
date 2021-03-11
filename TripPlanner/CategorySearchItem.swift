//
//  CategorySearchItem.swift
//  TripPlanner
//
//  Created by Mayank Gandhi on 3/11/21.
//

import SwiftUI

struct SearchCategory: Identifiable, Hashable{
  let id: String
  let name: String
}

struct CategorySearchItem: View {
  let searchCategory: SearchCategory
    var body: some View {
      Text(searchCategory.name.uppercased()).font(.caption)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .background(Color.blue)
    }
}
