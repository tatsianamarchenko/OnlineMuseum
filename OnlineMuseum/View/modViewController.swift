//
//  modViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class modViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: modPresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension modViewController: modView {
    // TODO: implement view output methods
}
