//
//  ObjectCollectionModuleRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ObjectCollectionModuleRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> ObjectCollectionModuleViewController {
        let viewController = UIStoryboard.loadViewController() as ObjectCollectionModuleViewController
        let presenter = ObjectCollectionModulePresenter()
        let router = ObjectCollectionModuleRouter()
        let interactor = ObjectCollectionModuleInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension ObjectCollectionModuleRouter: ObjectCollectionModuleWireframe {
    // TODO: Implement wireframe methods
}
