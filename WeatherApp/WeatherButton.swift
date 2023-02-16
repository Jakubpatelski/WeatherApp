//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Jakub Patelski on 15/02/2023.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroudColor: Color
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(backgroudColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .medium))
            .cornerRadius(10)

    }
}
