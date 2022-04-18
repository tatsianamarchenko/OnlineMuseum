//
//  ObjectCollectionPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ObjectCollectionPresenter: ViewToPresenterObjectCollectionProtocol {
    // MARK: Properties
    var view: PresenterToViewObjectCollectionProtocol?
	var interactor: PresenterToInteractorObjectCollectionProtocol? {
		didSet {
			interactor?.fetchObjects()
		}
	}
    var router: PresenterToRouterObjectCollectionProtocol?
}

extension ObjectCollectionPresenter: InteractorToPresenterObjectCollectionProtocol {

	func interactorDidFetchObjects(with result: Result<Object, Error>) {
		switch result {
		case .success(let object):
			view?.update(with: object)
		case .failure(let error):
			print(error)
		}
	}

	func didSelect(_ object: Object, from view: UIViewController) {
		self.router?.showObject(for: object, from: view)
	}
    
}
