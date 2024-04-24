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
        let keyId = "dccdGsd1zMOGyt2a"
        let publicKey = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4GZAZ2//eIQInAPrh1x18BUDNwDBo7yZGwxClqh3Y7g+valj40wdT27i4/EZs7pmH89ex0LsZwtX6OgjEAc2zwqyVOUqdq34aSqDqXPuasbAV+aV/PXB1T55LmGykOK+Vymy86kBnPHtqoAf3xeJOVEDKGlN5S07Kv7FuBI2nDswqAi4M3dVgxwO++uzoAorS5KOHm+0ostoxBB/73QVB8LJEaPqroZDnW94BxJwhMLhPrWoh40tnwsR6QgIwbDTHKwdSbDNVMBfoomHe5rX738ix+j7/SNaLMfR/qsYOlGLLrQexUMv14uqSOz431Ljct6QbCz9T7MZBLjmfLL0QQIDAQAB"
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

