//
//  BasicInformationPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class BasicInformationPresenter: ViewToPresenterBasicInformationProtocol {

    // MARK: Properties
    var view: PresenterToViewBasicInformationProtocol?
    var interactor: PresenterToInteractorBasicInformationProtocol?
    var router: PresenterToRouterBasicInformationProtocol?
}

extension BasicInformationPresenter: InteractorToPresenterBasicInformationProtocol {
    
}
