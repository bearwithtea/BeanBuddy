//
//  CurrentWeatherCollectionViewCell.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/5/24.
//

import UIKit

class CurrentWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "CurrentWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
