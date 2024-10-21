//
//  WeatherUIApp.swift
//  WeatherUI
//
//  Created by sayed mansour on 21/10/2024.
//

import SwiftUI
import Alamofire

@main
struct WeatherAppApp: App {
    let reachabilityManager = NetworkReachabilityManager()
    
    var body: some Scene {
        WindowGroup {
            if reachabilityManager!.isReachable {
                ContentView()
            } else {
                Text("NO CONNECTION 🛜").opacity(0.5)
            }
        }
    }
}

