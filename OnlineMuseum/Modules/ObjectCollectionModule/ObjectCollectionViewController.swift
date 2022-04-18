//
//  ObjectCollectionViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import UIKit

class ObjectCollectionViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterObjectCollectionProtocol?
    
}

extension ObjectCollectionViewController: PresenterToViewObjectCollectionProtocol{
    // TODO: Implement View Output Methods
}
