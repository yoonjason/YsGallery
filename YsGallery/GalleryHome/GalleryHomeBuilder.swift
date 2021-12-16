//
//  GalleryHomeBuilder.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs

protocol GalleryHomeDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class GalleryHomeComponent: Component<GalleryHomeDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol GalleryHomeBuildable: Buildable {
    func build(withListener listener: GalleryHomeListener) -> GalleryHomeRouting
}

final class GalleryHomeBuilder: Builder<GalleryHomeDependency>, GalleryHomeBuildable {

    override init(dependency: GalleryHomeDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: GalleryHomeListener) -> GalleryHomeRouting {
        let component = GalleryHomeComponent(dependency: dependency)
        let viewController = GalleryHomeViewController()
        let interactor = GalleryHomeInteractor(presenter: viewController)
        interactor.listener = listener
        return GalleryHomeRouter(interactor: interactor, viewController: viewController)
    }
}
