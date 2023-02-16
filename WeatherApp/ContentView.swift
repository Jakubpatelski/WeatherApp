//
//  ContentView.swift
//  WeatherApp
//
//  Created by Jakub Patelski on 13/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {

            BackgroundView(isNight: $isNight)
            
            VStack{
                
                CityTextView(cityName: "Copenhagen, DK")
 
                MainWeatherView(isNight: $isNight)
          
                HStack(spacing: 10) {
                    
                    ForEach(weatherDays){ days in
                        WeatherDayView(weather: days)
                }
            }
                 Spacer()
               
                Button(action: {
         //shorter version
        //   toggle() is a method that is available on boolean values. It flips the boolean value from true to false vice versa
                    isNight.toggle()
                    
//                    if isNight == true{
//                        $isNight.wrappedValue.toggle()
//                    } else {
//                        $isNight.wrappedValue.toggle()
//                    }
                },
                       label: {
                    WeatherButton(title: "Change The Day",
                                  textColor: .blue,
                                  backgroudColor: .white)
                })
               
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct BackgroundView: View {
    @Binding var isNight: Bool

    var body: some View {

        LinearGradient(gradient: Gradient(colors: [isNight ? .gray : .blue, isNight ? .gray : Color("lightBlue")]),

                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)//fill full screen
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherView: View {
    

    
    @Binding var isNight: Bool
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(isNight ? 10 : 20) °")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}



