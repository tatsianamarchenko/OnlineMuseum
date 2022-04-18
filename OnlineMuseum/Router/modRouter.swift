//
//  modRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class modRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> modViewController {
        let viewController = UIStoryboard.loadViewController() as modViewController
        let presenter = modPresenter()
        let router = modRouter()
        let interactor = modInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension modRouter: modWireframe {
    // TODO: Implement wireframe methods
}
