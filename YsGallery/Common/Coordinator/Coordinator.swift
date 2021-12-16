//
//  Coordinator.swift
//  YsGallery
//
//  Created by yoon on 2021/12/16.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}

func new(name: String, storyboard: String = "") -> UIViewController {
    let storybordName = !storyboard.isEmpty ? storyboard : name
    return UIStoryboard(name: "\(storybordName)", bundle: nil).instantiateViewController(withIdentifier: name)
}
