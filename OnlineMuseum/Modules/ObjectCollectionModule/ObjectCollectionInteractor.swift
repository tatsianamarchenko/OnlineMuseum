//
//  ObjectCollectionInteractor.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class ObjectCollectionInteractor: PresenterToInteractorObjectCollectionProtocol {

	// MARK: Properties
	var presenter: InteractorToPresenterObjectCollectionProtocol?

	let apiService: ApiService

	init(apiService: ApiService) {
		self.apiService = apiService
	}
	var index = 30

	func fetchObjects() {

		for index in 0..<10 {
			self.index += 1
			apiService.fetch(urlString: "https://collectionapi.metmuseum.org/public/collection/v1/objects/\(self.index)") { (result: Result<Object, ApiService.Error>) in
				switch result {
				case .success(let success):
					if !success.primaryImage.isEmpty {
					self.presenter?.interactorDidFetchObjects(with: .success(success))
					}
				case .failure(let failure):
					self.presenter?.interactorDidFetchObjects(with: .failure(failure))
				}
			}
		}
	}
}

