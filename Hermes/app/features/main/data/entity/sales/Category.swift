//
//  Category.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Category: Codable {
    var mi: String
    var ni: String
    var xi: String
    
    private enum CodingKeys: CodingKey {
        case mi, ni, xi
    }
    
    init(mi: String, ni: String, xi: String) {
        self.mi = mi
        self.ni = ni
        self.xi = xi
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        mi = try container.decode(String.self, forKey: .mi)
        ni = try container.decode(String.self, forKey: .ni)
        xi = try container.decode(String.self, forKey: .xi)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mi, forKey: .mi)
        try container.encode(ni, forKey: .ni)
        try container.encode(xi, forKey: .xi)
    }
}
