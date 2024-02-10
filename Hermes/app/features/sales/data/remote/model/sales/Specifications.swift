//
//  Specifications.swift
//  Hermes
//
//  Created by José Ruiz on 29/1/24.
//

import Foundation

struct Specifications: Codable {
    var models: [String]
    var colours: [String]
    var capacity: Int? = nil
    var finished: String? = nil
    var inBox: [String]? = nil
    var kind: String? = nil
    var size: Size? = nil
}
