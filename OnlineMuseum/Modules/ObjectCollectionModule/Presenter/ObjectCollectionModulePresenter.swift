//
//  ObjectCollectionModulePresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class ObjectCollectionModulePresenter {

    // MARK: Properties

    weak var view: ObjectCollectionModuleView?
    var router: ObjectCollectionModuleWireframe?
    var interactor: ObjectCollectionModuleUseCase?
}

extension ObjectCollectionModulePresenter: ObjectCollectionModulePresentation {
    // TODO: implement presentation methods
}

extension ObjectCollectionModulePresenter: ObjectCollectionModuleInteractorOutput {
    // TODO: implement interactor output methods
}
