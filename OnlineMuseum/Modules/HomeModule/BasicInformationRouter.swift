//
//  BasicInformationRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class BasicInformationRouter: PresenterToRouterBasicInformationProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = BasicInformationViewController()
        
        let presenter: ViewToPresenterBasicInformationProtocol & InteractorToPresenterBasicInformationProtocol = BasicInformationPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = BasicInformationRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = BasicInformationInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
