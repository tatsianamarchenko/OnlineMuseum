//
//  ObjectCollectionPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class ObjectCollectionPresenter: ViewToPresenterObjectCollectionProtocol {

    // MARK: Properties
    var view: PresenterToViewObjectCollectionProtocol?
    var interactor: PresenterToInteractorObjectCollectionProtocol?
    var router: PresenterToRouterObjectCollectionProtocol?
}

extension ObjectCollectionPresenter: InteractorToPresenterObjectCollectionProtocol {
    
}
