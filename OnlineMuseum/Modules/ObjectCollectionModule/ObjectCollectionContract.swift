//
//  ObjectCollectionContract.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewObjectCollectionProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterObjectCollectionProtocol {
    
    var view: PresenterToViewObjectCollectionProtocol? { get set }
    var interactor: PresenterToInteractorObjectCollectionProtocol? { get set }
    var router: PresenterToRouterObjectCollectionProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorObjectCollectionProtocol {
    
    var presenter: InteractorToPresenterObjectCollectionProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterObjectCollectionProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterObjectCollectionProtocol {
    
}
