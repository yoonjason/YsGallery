//
//  ImageDetailViewController.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//


import UIKit

class TabBar: UITabBar {
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = Appearance.height + UIDevice.current.safeAreaBottomHeight
        
        return sizeThatFits
    }
}

private struct Appearance {
  static let height: CGFloat = 67.0
}
