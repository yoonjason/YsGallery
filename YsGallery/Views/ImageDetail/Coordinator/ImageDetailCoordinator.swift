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

    func start() {
        let vc = ImageDetailViewController()
        vc.coordinator = self
        self.navigationController.modalPresentationStyle = .overFullScreen
        self.navigationController.present(vc, animated: true, completion: nil)
 
    }

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    

}

extension ImageDetailCoordinatorImp: ImageDetailCoordinator {
    
}
