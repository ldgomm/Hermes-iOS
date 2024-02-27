//
//  Warranty.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Warranty: Codable {
    var hasWarranty: Bool
    var details: [String]? = nil
    var months: Int? = nil
    
    private enum CodingKeys: CodingKey {
        case hasWarranty, months, details
    }
    
    init(hasWarranty: Bool, details: [String]?, months: Int? = nil) {
        self.hasWarranty = hasWarranty
        self.details = details
        self.months = months
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        hasWarranty = try container.decode(Bool.self, forKey: .hasWarranty)
        details = try container.decodeIfPresent([String].self, forKey: .details)
        months = try container.decodeIfPresent(Int.self, forKey: .months)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hasWarranty, forKey: .hasWarranty)
        try container.encode(details, forKey: .details)
        try container.encodeIfPresent(months, forKey: .months)
    }
}
