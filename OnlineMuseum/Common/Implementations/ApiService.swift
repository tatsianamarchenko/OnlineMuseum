//
//  MockService.swift
//  VIPER best practices
//
//  Created by Tibor Bödecs on 2019. 03. 05..
//  Copyright © 2019. Tibor Bödecs. All rights reserved.
//

import Foundation

class ApiService: ApiServiceProtocol {
	func departments() -> [Department] {
		var departments = [Department]()
		return departments
	}

	func objects() -> [Objects] {
		var objects = [Objects]()
		return objects
	}

	func object() -> [Object] {
		var object = [Object]()
		return object
	}
}
