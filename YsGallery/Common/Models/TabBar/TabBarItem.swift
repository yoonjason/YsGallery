//
//  ImageDetailViewController.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

enum TabBarItem: String, CaseIterable {
    case home
    
    var item: UITabBarItem {
        switch self {
        case .home:
            let image = UIImage(systemName: "house")
            return UITabBarItem(title: "홈", image: image, tag: 0)
        }
    }

    var tabNo: Int {
        switch self {
        case .home:
            return 0
        }
    }
}
