//
//  GalleryHomeRouter.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs

protocol GalleryHomeInteractable: Interactable {
    var router: GalleryHomeRouting? { get set }
    var listener: GalleryHomeListener? { get set }
}

protocol GalleryHomeViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class GalleryHomeRouter: ViewableRouter<GalleryHomeInteractable, GalleryHomeViewControllable>, GalleryHomeRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: GalleryHomeInteractable, viewController: GalleryHomeViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
