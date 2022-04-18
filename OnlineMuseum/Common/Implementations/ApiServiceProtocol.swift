//
//  Api.swift
//  VIPER best practices
//
//  Created by Tibor Bödecs on 2019. 03. 05..
//  Copyright © 2019. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol ApiServiceProtocol {
    func departments()
	func objects() -> [Objects]
	func object() -> [Object]
}
