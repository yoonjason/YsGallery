//
//  AppCoordinator.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let splashCoordinator = SplashCoordinatorImp(window: window)
        coordinate(to: splashCoordinator)
    }
    
}
