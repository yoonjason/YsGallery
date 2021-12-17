//
//  ImageDetailViewController.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//


import UIKit

class TabBarController: UITabBarController {
    
    var coordinator: TabBarCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        moveToViewContollers()
        view.backgroundColor = .white
    }
    
    func moveToViewContollers() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {
                return
            }

            self.coordinator.setViewControllers()
        }
    }
}
