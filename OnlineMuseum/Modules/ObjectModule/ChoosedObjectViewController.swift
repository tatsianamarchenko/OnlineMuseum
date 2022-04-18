//
//  ChoosedObjectViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import UIKit

class ChoosedObjectViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterChoosedObjectProtocol?
    
}

extension ChoosedObjectViewController: PresenterToViewChoosedObjectProtocol{
    // TODO: Implement View Output Methods
}
