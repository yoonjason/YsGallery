//
//  AppDelegate.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coodinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.makeKeyAndVisible()
        
        self.coodinator = AppCoordinator(window: window!)
        self.coodinator?.start()
        
        return true
    }


}

