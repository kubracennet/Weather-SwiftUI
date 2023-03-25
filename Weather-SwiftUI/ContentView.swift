//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Kübra Cennet Yavaşoğlu on 25.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack { // arka plan rengimzstack ile
            BackgroundView(topColor: .blue,
                           bottomColor: Color("lightBlue")) //rengimi güvenli alanda tutmak için kullanırım bu kodu
            VStack {
               CityTextView(cityName: "New York, USA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                
    //struct oluşturup aşağı taşıdım             //VStack(spacing: 8) { //spacing 8 ile derece buluta biraz daha yaklaşmış oldu
                    //Image(systemName: "cloud.sun.fill")
                      //  .renderingMode(.original)
                        //.resizable()
                        //.aspectRatio(contentMode: .fit) //sf symbols'u normal görünümüne getirir.
                        //.frame(width: 180, height: 180)
                    
                  //  Text("79°")
                      //  .font(.system(size: 70, weight: .medium))
                        //.foregroundColor(.white)
                //}
               // Spacer()//bulut ve derece uzaklaştı.Günler daha da aşağı inmiş oldu.Kendisi otomatik açı belirliyor.
                //.padding(.bottom, 50) // Manuel aralık verebiliyorum.
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 75)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 80)
                    WeatherDayView(dayOfWeek: "THUR",
                                   imageName: "sunset.fill",
                                   temperature: 78)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "wind.snow",
                                   temperature: 50)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.rain.fill",
                                   temperature: 30)
            }
            Spacer()
                
                Button {
                   print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold,
                            design: .default))
                        .cornerRadius(10)
                }
                
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

struct WeatherDayView: View {
    //tek tek günleri ve hava durumunu yazmak yerine değişken oluştururum.
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40 )
            
            
            Text("\(temperature)°")
                .font(.system(size: 26, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
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

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit) //sf symbols'u normal görünümüne getirir.
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
    }
}
