//
//  modPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class modPresenter {

    // MARK: Properties

    weak var view: modView?
    var router: modWireframe?
    var interactor: modUseCase?
}

extension modPresenter: modPresentation {
    // TODO: implement presentation methods
}

extension modPresenter: modInteractorOutput {
    // TODO: implement interactor output methods
}
