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
	func config(object: [String])
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterChoosedObjectProtocol {
    
    var view: PresenterToViewChoosedObjectProtocol? { get set }
    var interactor: PresenterToInteractorChoosedObjectProtocol? { get set }
    var router: PresenterToRouterChoosedObjectProtocol? { get set }

	func fillView()
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
