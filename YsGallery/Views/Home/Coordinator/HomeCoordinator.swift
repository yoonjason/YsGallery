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

    unowned let tabBarController: TabBarController
    let navigationController = UINavigationController()

    init(tabBarController: TabBarController) {
        if tabBarController.viewControllers == nil {
            tabBarController.setViewControllers([navigationController], animated: false)
        }
        else {
            tabBarController.viewControllers?.append(navigationController)
        }

        self.tabBarController = tabBarController

    }

    func start() {
        let vc = HomeViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}

extension HomeCoordinatorImp: HomeCoordinator {

    func didTapImageDetail() {
        let coordinator = ImageDetailCoordinatorImp(navigationController: self.navigationController)
        coordinate(to: coordinator)
    }

}
