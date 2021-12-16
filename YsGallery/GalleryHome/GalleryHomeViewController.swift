//
//  GalleryHomeViewController.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs
import RxSwift
import UIKit

protocol GalleryHomePresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class GalleryHomeViewController: UIViewController, GalleryHomePresentable, GalleryHomeViewControllable {

    weak var listener: GalleryHomePresentableListener?

    private let galleryCollectionView: UICollectionView = {
        let collectionView = UICollectionView()
        
        return collectionView
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    func setupViews() {
        title = "홈"
    }
}
