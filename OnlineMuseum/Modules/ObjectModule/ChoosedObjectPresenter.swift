//
//  ChoosedObjectPresenter.swift
//  OnlineMuseum
//
//  Created by Tatsiana Marchanka on 16.04.22.
//  
//

import Foundation

class ChoosedObjectPresenter: ViewToPresenterChoosedObjectProtocol {

    // MARK: Properties
    var view: PresenterToViewChoosedObjectProtocol?
    var interactor: PresenterToInteractorChoosedObjectProtocol?
    var router: PresenterToRouterChoosedObjectProtocol?

	var object: Object

	init(object: Object) {
		self.object = object
	}

	func fillView() {
		var array = [String]()
		array.append("accession year: \(object.accessionYear)")
		array.append("title: \(object.title)")
		array.append("state: \(object.state)")
		array.append("artist role: \(object.artistRole)")
		array.append("artist nationality: \(object.artistNationality)")
		array.append("artistEndDate: \(object.artistEndDate)")
		array.append("artistBeginDate: \(object.artistBeginDate)")
		array.append("artistDisplayBio: \(object.artistDisplayBio)")
		array.append("artistWikidataURL: \(object.artistWikidataURL)")
		array.append("department: \(object.department)")
		array.append("rights And Reproduction: \(object.rightsAndReproduction)")
		array.append("repository: \(object.repository)")
		array.append("portfolio: \(object.portfolio)")
		array.append("period: \(object.period)")
		array.append("repository: \(object.objectWikidataURL)")
		array.append("portfolio: \(object.objectURL)")
		array.append("period: \(object.objectName)")
		array.append("objectID: \(object.objectID)")
		array.append("objectBeginDate: \(object.objectBeginDate)")
		array.append("objectEndDate: \(object.objectEndDate)")
		array.append("objectDate: \(object.objectDate)")
		array.append("metadataDate: \(object.metadataDate)")
		array.append("medium: \(object.medium)")
		array.append("isTimelineWork: \(object.isTimelineWork)")
		array.append("isPublicDomain: \(object.isPublicDomain)")
		array.append("isHighlight: \(object.isHighlight)")
		array.append("geographyType: \(object.geographyType)")
		array.append("galleryNumber: \(object.galleryNumber)")
		array.append("dynasty: \(object.dynasty)")
		array.append("creditLine: \(object.creditLine)")
		array.append("culture: \(object.culture)")
		array.append("dimensions: \(object.dimensions)")
		array.append("excavation: \(object.excavation)")
		array.append("classification: \(object.classification)")
		array.append("country: \(object.country)")
		view?.config(object: array)
	}
}

extension ChoosedObjectPresenter: InteractorToPresenterChoosedObjectProtocol {

}
