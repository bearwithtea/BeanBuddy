//
//  SettingsViewViewModel.swift
//  CoffeeWeather
//
//  Created by Owen McGrath on 3/4/24.
//

import Foundation

struct SettingsViewViewModel {
    let options: [SettingOption]
}

enum SettingOption: CaseIterable{
    case upgrade
    case privacy
    case terms
    case contact
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
        case .upgrade:
            return "Upgrade to Pro"
        case .privacy:
            return "Privacy Policy"
        case .terms:
            return "Terms of Use"
        case .contact:
            return "Get in Contact"
        case .getHelp:
            return "Get Help"
        case .rateApp:
            return "Rate App"
        }
    }
}
