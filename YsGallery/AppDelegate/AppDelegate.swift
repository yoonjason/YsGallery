//
//  AppDelegate.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import UIKit
import RIBs

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var launchRouter: LaunchRouting?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let launchRouter = AppRootBuilder(dependency: AppComponent()).build()
        self.launchRouter = launchRouter
        launchRouter.launch(from: window)
        
        return true
    }

}



