//
//  WeatherDay.swift
//  WeatherApp
//
//  Created by Jakub Patelski on 15/02/2023.
//

import Foundation
import SwiftUI


struct WeatherDay: Identifiable {
    
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
    let id = UUID()
 
}

let weatherDays = [
    WeatherDay(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 30),
    WeatherDay(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 35),
    WeatherDay(dayOfWeek: "THU", imageName: "wind.snow", temperature: -10),
    WeatherDay(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 15),
    WeatherDay(dayOfWeek: "Saturday", imageName: "snow", temperature: 0)
    
]

struct WeatherDayView: View {

    let weather: WeatherDay
    
    var body: some View {
        VStack {
            Text(weather.dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)

            Image(systemName: weather.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 30)

            Text("\(weather.temperature) °")
                .font(.system(size: 27, weight: .medium, design: .default))
                .foregroundColor(.white)

        }
    }
}


