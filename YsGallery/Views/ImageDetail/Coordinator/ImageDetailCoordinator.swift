//
//  ImageDetailCoordinator.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

protocol ImageDetailCoordinator: AnyObject {

}

class ImageDetailCoordinatorImp: Coordinator {
    
    var navigationController: UINavigationController
//    unowned let window: UIWindow


    func start() {
        let vc = ImageDetailViewController()
        vc.coordinator = self
        navigationController.navigationBar.backgroundColor = .white
        self.navigationController.modalPresentationStyle = .overFullScreen
        self.navigationController.present(vc, animated: true, completion: nil)
        
//        self.navigationController.pushViewController(vc, animated: true)
 
        print(#function)

    }

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    

}

extension ImageDetailCoordinatorImp: ImageDetailCoordinator {
    
}
