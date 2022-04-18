//
//  BasicInformationViewController.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import UIKit

class BasicInformationViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var presenter: ViewToPresenterBasicInformationProtocol?
    
}

extension BasicInformationViewController: PresenterToViewBasicInformationProtocol{
    // TODO: Implement View Output Methods
}
