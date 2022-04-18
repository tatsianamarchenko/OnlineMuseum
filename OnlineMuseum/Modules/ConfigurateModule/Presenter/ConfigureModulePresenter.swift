//
//  ConfigureModulePresenter.swift
//  VIPER best practices
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  Copyright © 2022 Tibor Bödecs. All rights reserved.
//

import Foundation

class ConfigureModulePresenter {

    // MARK: Properties

     var view: ConfigureModuleView?
    var router: ConfigureModuleWireframe?
    var interactor: ConfigureModuleUseCase?
}

extension ConfigureModulePresenter: ConfigureModulePresentation {
    // TODO: implement presentation methods
}

extension ConfigureModulePresenter: ConfigureModuleInteractorOutput {
    // TODO: implement interactor output methods
}
