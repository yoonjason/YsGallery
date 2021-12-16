//
//  AppComponent.swift
//  YsGallery
//
//  Created by Bradley.yoon on 2021/12/16.
//

import RIBs


final class AppComponent: Component<Dependency>, AppRootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}
