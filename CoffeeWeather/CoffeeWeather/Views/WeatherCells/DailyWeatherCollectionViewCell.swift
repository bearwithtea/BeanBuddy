//
//  DailyWeatherCollectionViewCell.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/5/24.
//

import UIKit

class DailyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "DailyWeatherCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .green
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
