//
//  ConfigRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ConfigRouter: PresenterToRouterConfigProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ConfigViewController()
        
        let presenter: ViewToPresenterConfigProtocol & InteractorToPresenterConfigProtocol = ConfigPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ConfigRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ConfigInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
