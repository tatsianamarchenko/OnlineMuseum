//
//  ChoosedObjectContract.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewChoosedObjectProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterChoosedObjectProtocol {
    
    var view: PresenterToViewChoosedObjectProtocol? { get set }
    var interactor: PresenterToInteractorChoosedObjectProtocol? { get set }
    var router: PresenterToRouterChoosedObjectProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorChoosedObjectProtocol {
    
    var presenter: InteractorToPresenterChoosedObjectProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterChoosedObjectProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterChoosedObjectProtocol {
    
}
