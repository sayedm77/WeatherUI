//
//  WeatherApiResponse.swift
//  WeatherUI
//
//  Created by sayed mansour on 21/10/2024.
//

import Foundation

class WeatherApiResponse: Codable {
    
    var location : Location
    var current : Current
    var forecast : Forecast

}

class Location: Codable {
    var name : String
    var region : String
    var country : String
}

class Current: Codable {
    var temp_c : Float
    var is_day : Float
    var condition : Condition
    var vis_km : Float
    var humidity : Int
    var feelslike_c : Float
    var pressure_mb : Float
}

class Condition: Codable {
    var text: String
    var icon: String
}

class Forecast: Codable {
    var forecastday : [ForecastDay]
}

class ForecastDay: Codable, Identifiable {
    var date: String
    var day: Day
    var hour: [Hour]
}

class Day: Codable {
    var maxtemp_c: Float
    var mintemp_c: Float
    var avgtemp_c: Float
    var condition: Condition
}


class Hour: Codable, Identifiable {
    var time: String
    var temp_c: Float
    var is_day: Int
    var condition: Condition
    var pressure_mb: Float
    var humidity: Int
    var vis_km: Float
    var feelslike_c: Float
}
