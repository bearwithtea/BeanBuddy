//
//  ViewController.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/2/24.
//

import UIKit

// singleton def https://en.wikipedia.org/wiki/Singleton_pattern

class WeatherViewController: UIViewController {
    
    private let primaryView = CurrentWeatherView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        getLocation()
    }
    
    private func getLocation() {
        LocationManagers.shared.getCurrentLocation { location in
            WeatherManager.shared.getWeather(for: location) { [weak self] in
                DispatchQueue.main.async {
                    self?.primaryView.reload()
                    
                    WeatherManager.shared.getWeather(for: location) {
                    }
                }
            }
        }
    }
        
    private func setUpView() {
        view.backgroundColor = .systemBackground
        
        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
