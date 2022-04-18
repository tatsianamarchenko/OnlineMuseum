//
//  ConfigureModuleRouter.swift
//  VIPER best practices
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  Copyright © 2022 Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class ConfigureModuleRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> ConfigureModuleViewController {
        let viewController = UIStoryboard.loadViewController() as ConfigureModuleViewController
        let presenter = ConfigureModulePresenter()
        let router = ConfigureModuleRouter()
        let interactor = ConfigureModuleInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension ConfigureModuleRouter: ConfigureModuleWireframe {
    // TODO: Implement wireframe methods
}
