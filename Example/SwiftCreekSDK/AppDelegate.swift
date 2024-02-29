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
        let controller = ViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = UINavigationController(rootViewController: controller)
        window?.makeKeyAndVisible()
        CreekInterFace.instance().setupInit()
        return true
    }


}

