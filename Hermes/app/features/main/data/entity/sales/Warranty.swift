//
//  Warranty.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Warranty: Codable {
    var hasWarranty: Bool
    var months: Int? = nil
    
    init(hasWarranty: Bool, months: Int? = nil) {
        self.hasWarranty = hasWarranty
        self.months = months
    }
    
    private enum CodingKeys: String, CodingKey {
        case hasWarranty, months
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        hasWarranty = try container.decode(Bool.self, forKey: .hasWarranty)
        months = try container.decodeIfPresent(Int.self, forKey: .months)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hasWarranty, forKey: .hasWarranty)
        try container.encodeIfPresent(months, forKey: .months)
    }
}
