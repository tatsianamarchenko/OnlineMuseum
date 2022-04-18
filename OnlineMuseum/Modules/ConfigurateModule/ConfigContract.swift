//
//  ConfigContract.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewConfigProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterConfigProtocol {
    
    var view: PresenterToViewConfigProtocol? { get set }
    var interactor: PresenterToInteractorConfigProtocol? { get set }
    var router: PresenterToRouterConfigProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorConfigProtocol {
    
    var presenter: InteractorToPresenterConfigProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterConfigProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterConfigProtocol {
    
}
