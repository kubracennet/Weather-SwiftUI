//
//  WeatherButton.swift
//  Weather-SwiftUI
//
//  Created by Kübra Cennet Yavaşoğlu on 25.03.2023.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
         .frame(width: 280, height: 50)
         .background(backgroundColor)
         .foregroundColor(textColor)
         .font(.system(size: 20,
                weight: .bold,
              design: .default))
         .cornerRadius(10)
  }
}
