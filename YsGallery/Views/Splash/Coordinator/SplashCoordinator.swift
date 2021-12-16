//
//  SplashCoordinator.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

protocol SplashCoordinator: AnyObject {
    func moveToMain(with initData: Any?)
}

class SplashCoordinatorImp: Coordinator {
    
    var navigationController: UINavigationController

    unowned let window: UIWindow

    init(window: UIWindow, navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.window = window
    }

    func start() {
        let splashViewController = SplashViewController()
        splashViewController.coordinator = self
       
        window.rootViewController = splashViewController
        window.makeKeyAndVisible()
    }
}

extension SplashCoordinatorImp: SplashCoordinator {
    
    func moveToMain(with initData: Any?) {
        let coordinator = HomeCoordinatorImp(navigationController: self.navigationController)
        coordinate(to: coordinator)
//        let coordinator = TabBarCoordinatorImp(window: window, initData: nil)
//        coordinate(to: coordinator)
    }
    

}
