//
//  AppCoordinator.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    let window: UIWindow

    init(window: UIWindow, navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        let splashCoordinator = SplashCoordinatorImp(window: window, navigationController: navigationController)
        coordinate(to: splashCoordinator)
    }
    
}
