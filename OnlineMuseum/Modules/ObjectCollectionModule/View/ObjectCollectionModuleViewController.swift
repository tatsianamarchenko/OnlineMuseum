//
//  ObjectCollectionModuleViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ObjectCollectionModuleViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: ObjectCollectionModulePresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ObjectCollectionModuleViewController: ObjectCollectionModuleView {
    // TODO: implement view output methods
}
