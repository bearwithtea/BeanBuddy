//
//  HourlyCollectionViewCell.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/5/24.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HourlyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .yellow
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
