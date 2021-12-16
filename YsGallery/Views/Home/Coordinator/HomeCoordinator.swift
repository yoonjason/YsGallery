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

    var navigationController: UINavigationController
//    unowned let window: UIWindow


    func start() {
        let vc = HomeViewController()
        vc.coordinator = self
        navigationController.navigationBar.backgroundColor = .white
//        navigationController.present(vc, animated: true, completion: nil)
        
        
//        navigationController.navigationBar.isTranslucent = false
//        navigationController.navigationBar.isHidden = false
        self.navigationController.pushViewController(vc, animated: false)
        navigationController.navigationBar.isTranslucent = false
//        navigationController.modalPresentationStyle = .fullScreen

        print(#function)

    }

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }



}

extension HomeCoordinatorImp: HomeCoordinator {
    
    func didTapImageDetail() {
        let coordinator = ImageDetailCoordinatorImp(navigationController: self.navigationController)
        coordinate(to: coordinator)
    }
    
}
