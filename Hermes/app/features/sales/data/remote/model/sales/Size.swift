//
//  Size.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

struct Size: Codable {
    var width: Double
    var height: Double
    var deep: Double? = nil
    var unit: String
}
