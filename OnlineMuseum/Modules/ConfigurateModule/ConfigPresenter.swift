//
//  ConfigPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class ConfigPresenter: ViewToPresenterConfigProtocol {

    // MARK: Properties
    var view: PresenterToViewConfigProtocol?
    var interactor: PresenterToInteractorConfigProtocol?
    var router: PresenterToRouterConfigProtocol?
}

extension ConfigPresenter: InteractorToPresenterConfigProtocol {
    
}
