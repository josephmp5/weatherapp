//
//  WelcomeView.swift
//  weatherapp
//
//  Created by Yakup Özmavi on 24.08.2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var  locationManager : LocationManager
    var body: some View {
        VStack{
            
            VStack(spacing: 20) {
                Text("Welcome to weather app").bold().font(.title)
                
                Text("share your current location").padding()
                
            }.multilineTextAlignment(.center).padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }.cornerRadius(30).symbolVariant(.fill).foregroundColor(.white)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
