//
//  ConfigViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import UIKit

class ConfigViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterConfigProtocol?
    
}

extension ConfigViewController: PresenterToViewConfigProtocol{
    // TODO: Implement View Output Methods
}
