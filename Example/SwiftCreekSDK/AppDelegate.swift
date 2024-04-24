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
        let keyId = "******"
        let publicKey = "**********"
        CreekInterFace.instance().ephemerisInit(withKeyId: keyId, publicKey: publicKey) {
            let model = EphemerisGPSModel()
            model.altitude = 10
            model.latitude = Int(22.312653 * 1000000)
            model.longitude = Int(114.027986 * 1000000)
            model.isVaild = true
            return model
        }
        return true
    }

}

