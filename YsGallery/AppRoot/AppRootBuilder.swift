//
//  AppRootBuilder.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs

protocol AppRootDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class AppRootComponent: Component<AppRootDependency>, GalleryHomeDependency {
    
    private let rootViewController: ViewControllable

    init(
        dependency: AppRootDependency,
        rootViewController: ViewControllable
    ) {
        self.rootViewController = rootViewController
        super.init(dependency: dependency)
    }
}

// MARK: - Builder

protocol AppRootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class AppRootBuilder: Builder<AppRootDependency>, AppRootBuildable {
    let tabBar = AppRootTabBarController()
    
    override init(dependency: AppRootDependency) {
        super.init(dependency: dependency)
    }

    func build() -> LaunchRouting {
        let component = AppRootComponent(dependency: dependency, rootViewController: tabBar)
        let galleryHome = GalleryHomeBuilder(dependency: component)
        let interactor = AppRootInteractor(presenter: tabBar)
        
        let router = AppRootRouter(
            interactor: interactor,
            viewController: tabBar,
            galleryHome: galleryHome
        )
        
        return router
    }
}
