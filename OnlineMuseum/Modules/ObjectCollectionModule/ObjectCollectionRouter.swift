//
//  ObjectCollectionRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ObjectCollectionRouter: PresenterToRouterObjectCollectionProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = ObjectCollectionViewController()
        
        let presenter: ViewToPresenterObjectCollectionProtocol & InteractorToPresenterObjectCollectionProtocol = ObjectCollectionPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = ObjectCollectionRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = ObjectCollectionInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
