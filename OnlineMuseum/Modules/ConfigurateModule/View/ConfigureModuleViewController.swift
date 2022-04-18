//
//  ConfigureModuleViewController.swift
//  VIPER best practices
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  Copyright © 2022 Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class ConfigureModuleViewController: UIViewController {

    // MARK: Properties

    var presenter: ConfigureModulePresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ConfigureModuleViewController: ConfigureModuleView {
    // TODO: implement view output methods
}
