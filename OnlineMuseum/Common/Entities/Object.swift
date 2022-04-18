//
//  Object.swift
//  MuseumOnline
//
//  Created by Tatsiana Marchanka on 16.04.22.
//

import Foundation

struct Object: Codable {
	let objectID: Int
	let isHighlight: Bool
	let accessionNumber, accessionYear: String
	let isPublicDomain: Bool
	let primaryImage, primaryImageSmall: String
	let additionalImages: String
	let constituents: String?
	let department, objectName, title, culture: String
	let period, dynasty, reign, portfolio: String
	let artistRole, artistPrefix, artistDisplayName, artistDisplayBio: String
	let artistSuffix, artistAlphaSort, artistNationality, artistBeginDate: String
	let artistEndDate, artistGender, artistWikidataURL, artistULANURL: String
	let objectDate: String
	let objectBeginDate, objectEndDate: Int
	let medium, dimensions: String
	let measurements: [Measurement]
	let creditLine, geographyType, city, state: String
	let county, country, region, subregion: String
	let locale, locus, excavation, river: String
	let classification, rightsAndReproduction, linkResource, metadataDate: String
	let repository: String
	let objectURL: String
	let tags: String?
	let objectWikidataURL: String
	let isTimelineWork: Bool
	let galleryNumber: String

	enum CodingKeys: String, CodingKey {
		case objectID, isHighlight, accessionNumber, accessionYear, isPublicDomain, primaryImage, primaryImageSmall, additionalImages, constituents, department, objectName, title, culture, period, dynasty, reign, portfolio, artistRole, artistPrefix, artistDisplayName, artistDisplayBio, artistSuffix, artistAlphaSort, artistNationality, artistBeginDate, artistEndDate, artistGender
		case artistWikidataURL = "artistWikidata_URL"
		case artistULANURL = "artistULAN_URL"
		case objectDate, objectBeginDate, objectEndDate, medium, dimensions, measurements, creditLine, geographyType, city, state, county, country, region, subregion, locale, locus, excavation, river, classification, rightsAndReproduction, linkResource, metadataDate, repository, objectURL, tags
		case objectWikidataURL = "objectWikidata_URL"
		case isTimelineWork
		case galleryNumber = "GalleryNumber"
	}
}

// MARK: - Measurement
struct Measurement: Codable {
	let elementName, elementDescription: String
	let elementMeasurements: ElementMeasurements
}

// MARK: - ElementMeasurements
struct ElementMeasurements: Codable {
	let diameter: Double

	enum CodingKeys: String, CodingKey {
		case diameter = "Diameter"
	}
}

