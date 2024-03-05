//
//  WeatherManager.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/2/24.
//

import CoreLocation
import Foundation
import WeatherKit

final class WeatherManager {
    static let shared = WeatherManager()
    
    let service = WeatherService.shared
    
    public private(set) var currentWeather: CurrentWeather? //anyone can access, only things in this class can write to it
    public private(set) var hourlyWeather: [DayWeather] = [] // creating an array to store the weather
    public private(set) var dailyWeather: [DayWeather] = [] // creating an array to store the weather
    
    
    private init() {}
    
    public func getWeather(for location: CLLocation, completion: @escaping () -> Void) {
        
        Task {
            do {
                let result = try await service.weather(for: location)
                
                print("Current: \(result.currentWeather)")
                print("Hourly: \(result.hourlyForecast)")
                print("Daily: \(result.dailyForecast)")
                self.currentWeather = result.currentWeather
                self.dailyWeather = result.dailyForecast.forecast //getting the forecast out of the generic model
                self.dailyWeather = result.dailyForecast.forecast
                
                completion()
                
                } catch {
                    print("\n\nError: " + (String(describing: error)))
            }
        }
    }
}
