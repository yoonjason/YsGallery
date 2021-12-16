//
//  NavigationControllerable.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import Foundation
import UIKit
import RIBs

public final class NavigationControllerable: ViewControllable {
  
  public var uiviewController: UIViewController { self.navigationController }
  public let navigationController: UINavigationController
  
  public init(root: ViewControllable) {
    let navigation = UINavigationController(rootViewController: root.uiviewController)
    navigation.navigationBar.isTranslucent = false
    navigation.navigationBar.backgroundColor = .white
    navigation.navigationBar.scrollEdgeAppearance = navigation.navigationBar.standardAppearance
    
    self.navigationController = navigation
  }
}
