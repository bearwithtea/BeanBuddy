//
//  CurrentWeatherView.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/2/24.
//

import UIKit

class CurrentWeatherView: UIView {
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
