//
//  ObjectCollectionContract.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewObjectCollectionProtocol {
 func update(with: Object)
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterObjectCollectionProtocol {
    
    var view: PresenterToViewObjectCollectionProtocol? { get set }
    var interactor: PresenterToInteractorObjectCollectionProtocol? { get set }
    var router: PresenterToRouterObjectCollectionProtocol? { get set }

	func didSelect(_ object: Object, from view: UIViewController)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorObjectCollectionProtocol {
    
    var presenter: InteractorToPresenterObjectCollectionProtocol? { get set }

	func fetchObjects() 
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterObjectCollectionProtocol {
	func interactorDidFetchObjects(with result: Result<Object, Error>) 
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterObjectCollectionProtocol {
	func showObject(for post: Object, from view: UIViewController)
}
