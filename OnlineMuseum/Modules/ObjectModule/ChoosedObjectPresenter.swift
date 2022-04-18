//
//  ChoosedObjectPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class ChoosedObjectPresenter: ViewToPresenterChoosedObjectProtocol {

    // MARK: Properties
    var view: PresenterToViewChoosedObjectProtocol?
    var interactor: PresenterToInteractorChoosedObjectProtocol?
    var router: PresenterToRouterChoosedObjectProtocol?
}

extension ChoosedObjectPresenter: InteractorToPresenterChoosedObjectProtocol {
    
}
