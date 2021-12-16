//
//  HomeCoordinator.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

protocol HomeCoordinator: AnyObject {
    func didTapImageDetail()
}

class HomeCoordinatorImp: Coordinator {

    var navigationController = UINavigationController()
    unowned let window: UIWindow

    func start() {
        let vc = HomeViewController()
        vc.coordinator = self
        navigationController.navigationBar.backgroundColor = .white
        navigationController = UINavigationController(rootViewController: vc)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    init(window: UIWindow) {
        self.window = window
    }

}

extension HomeCoordinatorImp: HomeCoordinator {
    
    func didTapImageDetail() {
    let coordinator = ImageDetailCoordinatorImp(navigationController: self.navigationController)
        coordinate(to: coordinator)
    }
    
}
