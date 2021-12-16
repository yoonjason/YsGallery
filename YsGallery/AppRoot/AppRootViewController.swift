//
//  AppRootViewController.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs
import RxSwift
import UIKit

protocol AppRootPresentableListener: AnyObject {
    
}

final class AppRootTabBarController: UITabBarController, AppRootPresentable, AppRootViewControllable {

    weak var listener: AppRootPresentableListener?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
    }
    
    func setupViewControllers(_ viewControllers: [ViewControllable]){
        super.setViewControllers(viewControllers.map(\.uiviewController), animated: false)
    }
}

