//
//  HomeModulePresenter.swift
//  VIPER best practices
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  Copyright © 2022 Tibor Bödecs. All rights reserved.
//

import Foundation

class HomeModulePresenter {

    // MARK: Properties

    weak var view: HomeModuleView?
    var router: HomeModuleWireframe?
    var interactor: HomeModuleUseCase?
}

extension HomeModulePresenter: HomeModulePresentation {
    // TODO: implement presentation methods
}

extension HomeModulePresenter: HomeModuleInteractorOutput {
    // TODO: implement interactor output methods
}
