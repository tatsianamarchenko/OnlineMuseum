//
//  HomeModuleViewController.swift
//  VIPER best practices
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  Copyright © 2022 Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class HomeModuleViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: HomeModulePresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeModuleViewController: HomeModuleView {
    // TODO: implement view output methods
}
