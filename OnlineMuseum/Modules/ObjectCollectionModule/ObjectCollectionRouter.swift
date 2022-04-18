//
//  ObjectCollectionRouter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation
import UIKit

class ObjectCollectionRouter: PresenterToRouterObjectCollectionProtocol {
	// MARK: Static methods
	static func createModule() -> UIViewController {

		let viewController = ObjectCollectionViewController()

		let presenter: ViewToPresenterObjectCollectionProtocol & InteractorToPresenterObjectCollectionProtocol = ObjectCollectionPresenter()

		viewController.presenter = presenter
		viewController.presenter?.router = ObjectCollectionRouter()
		viewController.presenter?.view = viewController
		viewController.presenter?.interactor = ObjectCollectionInteractor(apiService: ApiService())
		viewController.presenter?.interactor?.presenter = presenter

		return viewController
	}

	func showObject(for post: Object, from view: UIViewController) {
		let detailViewController = ChoosedObjectRouter.createModule(object: post)
		  let nav = UINavigationController(rootViewController: detailViewController)
		  nav.modalPresentationStyle = .pageSheet
		  if let sheet = nav.sheetPresentationController {
			  sheet.detents = [.medium(), .large()]
		  }
		view.present(nav, animated: true, completion: nil)
	}
}

