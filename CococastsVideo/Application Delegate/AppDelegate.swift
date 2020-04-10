//
//  AppDelegate.swift
//  CococastsVideo
//
//  Created by John Lawrence Salvador on 4/5/20.
//  Copyright © 2020 JLCS Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(Configuration.current)
        print(Environment.current)
        print(Environment.baseURL)
        return true
    }
}

