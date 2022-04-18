//
//  Department.swift
//  MuseumOnline
//
//  Created by Tatsiana Marchanka on 16.04.22.
//

import Foundation

struct Departments: Codable {
	let departments: [Department]
}

struct Department: Codable {
	let departmentID: Int
	let displayName: String

	enum CodingKeys: String, CodingKey {
		case departmentID = "departmentId"
		case displayName
	}
}
