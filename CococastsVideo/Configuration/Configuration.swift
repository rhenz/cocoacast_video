//
//  Configuration.swift
//  CococastsVideo
//
//  Created by John Lawrence Salvador on 4/10/20.
//  Copyright © 2020 JLCS Inc. All rights reserved.
//

import Foundation

enum Configuration: String {
    case debug
    case release
    
    static let current: Configuration = {
        
        // Build Configuration
        guard let value = Bundle.main.infoDictionary?["CONFIGURATION"] as? String else {
            fatalError("No Configuration Found")
        }
        
        guard let rawValue = value.split(separator: "/").first else {
            fatalError("Invalid Configuration")
        }
        
        guard let configuration = Configuration(rawValue: rawValue.lowercased()) else {
            fatalError("Invalid Configuration")
        }
        
        return configuration
    }()
}
