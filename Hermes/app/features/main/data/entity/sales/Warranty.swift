//
//  Warranty.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

struct Warranty: Codable {
    var hasWarranty: Bool
    var details: [String]? = nil
    var months: Int? = nil
}
