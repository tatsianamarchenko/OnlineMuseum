//
//  ChoosedObjectRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ChoosedObjectRouter: PresenterToRouterChoosedObjectProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ChoosedObjectViewController()
        
        let presenter: ViewToPresenterChoosedObjectProtocol & InteractorToPresenterChoosedObjectProtocol = ChoosedObjectPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ChoosedObjectRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ChoosedObjectInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
