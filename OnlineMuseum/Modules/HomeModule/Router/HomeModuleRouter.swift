//
//  HomeModuleRouter.swift
//  VIPER best practices
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  Copyright © 2022 Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class HomeModuleRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> HomeModuleViewController {
        let viewController = HomeModuleViewController()
        let presenter = HomeModulePresenter()
        let router = HomeModuleRouter()
        let interactor = HomeModuleInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension HomeModuleRouter: HomeModuleWireframe {
    // TODO: Implement wireframe methods
}
