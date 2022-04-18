//
//  Object.swift
//  MuseumOnline
//
//  Created by Tatsiana Marchanka on 16.04.22.
//

//import Foundation
//
//// MARK: - Welcome
//struct Object: Codable {
//	let objectID: Int?
//	let isHighlight: Bool?
//	let accessionNumber, accessionYear: String?
//	let isPublicDomain: Bool?
//	let primaryImage, primaryImageSmall: String?
//	let additionalImages: [String]?
////	let constituents: [Constituent]?
//	let department, objectName, title, culture: String?
//	let period, dynasty, reign, portfolio: String?
//	let artistRole, artistPrefix, artistDisplayName, artistDisplayBio: String?
//	let artistSuffix, artistAlphaSort, artistNationality, artistBeginDate: String?
//	let artistEndDate, artistGender, artistWikidataURL, artistULANURL: String?
//	let objectDate: String?
//	let objectBeginDate, objectEndDate: Int?
//	let medium, dimensions: String?
//	let measurements: [Measurement]?
//	let creditLine, geographyType, city, state: String?
//	let county, country, region, subregion: String?
//	let locale, locus, excavation, river: String?
//	let classification, rightsAndReproduction, linkResource, metadataDate: String?
//	let repository: String?
//	let objectURL: String?
//	let objectWikidataURL: String?
//	let isTimelineWork: Bool?
//	let galleryNumber: String?
//
//	enum CodingKeys: String, CodingKey {
//		case objectID, isHighlight, accessionNumber, accessionYear, isPublicDomain, primaryImage, primaryImageSmall, additionalImages, department, objectName, title, culture, period, dynasty, reign, portfolio, artistRole, artistPrefix, artistDisplayName, artistDisplayBio, artistSuffix, artistAlphaSort, artistNationality, artistBeginDate, artistEndDate, artistGender
//		case artistWikidataURL = "artistWikidata_URL"
//		case artistULANURL = "artistULAN_URL"
//		case objectDate, objectBeginDate, objectEndDate, medium, dimensions, measurements, creditLine, geographyType, city, state, county, country, region, subregion, locale, locus, excavation, river, classification, rightsAndReproduction, linkResource, metadataDate, repository, objectURL
//		case objectWikidataURL = "objectWikidata_URL"
//		case isTimelineWork
//		case galleryNumber = "GalleryNumber"
//	}
//}
//
//// MARK: - Constituent
//struct Constituent: Codable {
//	let constituentID: Int
//	let role, name, constituentULANURL, constituentWikidataURL: String
//	let gender: String
//
//	enum CodingKeys: String, CodingKey {
//		case constituentID, role, name
//		case constituentULANURL = "constituentULAN_URL"
//		case constituentWikidataURL = "constituentWikidata_URL"
//		case gender
//	}
//}
//
//// MARK: - Measurement
//struct Measurement: Codable {
//	let elementName: String
//	let elementDescription: String?
//	let elementMeasurements: ElementMeasurements
//}
//
//// MARK: - ElementMeasurements
//struct ElementMeasurements: Codable {
//	let depth, height, width: Double
//
//	enum CodingKeys: String, CodingKey {
//		case depth = "Depth"
//		case height = "Height"
//		case width = "Width"
//	}
//}
//
//

// MARK: - Welcome
struct Object: Codable {
	let objectID: Int
	let isHighlight: Bool
	let accessionNumber, accessionYear: String
	let isPublicDomain: Bool
	let primaryImage, primaryImageSmall: String
	let additionalImages: [String]

	let department, objectName, title, culture: String
	let period, dynasty, reign, portfolio: String
	let artistRole, artistPrefix, artistDisplayName, artistDisplayBio: String
	let artistSuffix, artistAlphaSort, artistNationality, artistBeginDate: String
	let artistEndDate, artistGender, artistWikidataURL, artistULANURL: String
	let objectDate: String
	let objectBeginDate, objectEndDate: Int
	let medium, dimensions: String
	let creditLine, geographyType, city, state: String
	let county, country, region, subregion: String
	let locale, locus, excavation, river: String
	let classification, rightsAndReproduction, linkResource, metadataDate: String
	let repository: String
	let objectURL: String
	let objectWikidataURL: String
	let isTimelineWork: Bool
	let galleryNumber: String

	enum CodingKeys: String, CodingKey {
		case objectID, isHighlight, accessionNumber, accessionYear, isPublicDomain, primaryImage, primaryImageSmall, additionalImages, department, objectName, title, culture, period, dynasty, reign, portfolio, artistRole, artistPrefix, artistDisplayName, artistDisplayBio, artistSuffix, artistAlphaSort, artistNationality, artistBeginDate, artistEndDate, artistGender
		case artistWikidataURL = "artistWikidata_URL"
		case artistULANURL = "artistULAN_URL"
		case objectDate, objectBeginDate, objectEndDate, medium, dimensions, creditLine, geographyType, city, state, county, country, region, subregion, locale, locus, excavation, river, classification, rightsAndReproduction, linkResource, metadataDate, repository, objectURL
		case objectWikidataURL = "objectWikidata_URL"
		case isTimelineWork
		case galleryNumber = "GalleryNumber"
	}
}

// MARK: - Measurement
