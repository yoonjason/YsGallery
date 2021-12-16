//
//  AppRootRouter.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs

protocol AppRootInteractable: Interactable, GalleryHomeListener {
    var router: AppRootRouting? { get set }
    var listener: AppRootListener? { get set }
}

protocol AppRootViewControllable: ViewControllable {
    func setupViewControllers(_ viewControllers: [ViewControllable])
}

final class AppRootRouter: LaunchRouter<AppRootInteractable, AppRootViewControllable>, AppRootRouting {
    
    private let galleryHome: GalleryHomeBuildable
    
    private var galleryRouting: ViewableRouting?
    
    init(interactor: AppRootInteractable,
         viewController: AppRootViewControllable,
         galleryHome: GalleryHomeBuildable
    ) {
        self.galleryHome = galleryHome
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    func attachTab(){
        let galleryRouting = galleryHome.build(withListener: interactor)
        
        attachChild(galleryRouting)
        
        let viewControllers = [
            NavigationControllerable(root: galleryRouting.viewControllable)
        ]
        viewController.setupViewControllers(viewControllers)
        
    }
}
