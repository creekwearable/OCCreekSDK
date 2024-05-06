//
//  AppDelegate.swift
//  SwiftCreekSDK
//
//  Created by bean on 2024/2/22.
//  Copyright © 2024 bean. All rights reserved.
//

import UIKit
import OCCreekSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = ExampleProvider.systemStyle()
        window?.makeKeyAndVisible()
        CreekInterFace.instance().setupInit()
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
       print("Cut to background")
       CreekInterFace.instance().monitorPhone()
    }

}

