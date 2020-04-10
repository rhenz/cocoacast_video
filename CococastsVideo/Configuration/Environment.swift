//
//  Environment.swift
//  CococastsVideo
//
//  Created by John Lawrence Salvador on 4/10/20.
//  Copyright © 2020 JLCS Inc. All rights reserved.
//

import Foundation

enum Environment: String {
    case staging
    case production
    
    static let current: Environment = {
        
        // Build Configuration
        guard let value = Bundle.main.infoDictionary?["CONFIGURATION"] as? String else {
            fatalError("No Configuration Found")
        }
        
        guard let rawValue = value.split(separator: "/").last else {
            fatalError("Invalid Configuration")
        }
        
        guard let environment = Environment(rawValue: rawValue.lowercased()) else {
            fatalError("Invalid Environment")
        }
        
        return environment
    }()
    
    static var baseURL: URL {
        switch current {
        case .staging:
            return URL(string: "https://staging.cocoacast.com")!
        case .production:
            return URL(string: "https://cocoacast.com")!
        }
    }
}
