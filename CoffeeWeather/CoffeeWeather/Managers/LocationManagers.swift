//
//  LocationManagers.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/2/24.
//

import CoreLocation
import Foundation

final class LocationManagers: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
        
    static let shared = LocationManagers()
    
    private var locationFetchCompletion: ((CLLocation) -> Void)?
    
    private var location: CLLocation? {
        didSet {
            guard let location else {
                return
            }
            locationFetchCompletion?(location)
        }
    }
    
    public func getCurrentLocation(completion: @escaping (CLLocation) -> Void) {
        
        self.locationFetchCompletion = completion
        
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
        manager.startUpdatingLocation()
    }
    
    // MARK: - Location
    
    func locationManager( _ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        self.location = location
        manager.stopUpdatingLocation()
    }
}
