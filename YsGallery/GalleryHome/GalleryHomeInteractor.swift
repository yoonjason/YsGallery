//
//  GalleryHomeInteractor.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs
import RxSwift

protocol GalleryHomeRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol GalleryHomePresentable: Presentable {
    var listener: GalleryHomePresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol GalleryHomeListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class GalleryHomeInteractor: PresentableInteractor<GalleryHomePresentable>, GalleryHomeInteractable, GalleryHomePresentableListener {

    weak var router: GalleryHomeRouting?
    weak var listener: GalleryHomeListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: GalleryHomePresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
