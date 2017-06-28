//
//  AppDelegate.swift
//  OneButtonApp
//
//  Created by Blake Merryman on 6/28/17.
//  Copyright © 2017 Blake Merryman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UserDefaults.standard.register(defaults: [NumberOfTapsStorageKey: 0]) // Register default number of taps.
        return true
    }

}

