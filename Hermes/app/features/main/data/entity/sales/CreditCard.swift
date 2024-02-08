//
//  CreditCard.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class CreditCard: Codable {
    var card: Double
    var withinterest: Int? = nil
    var withoutinterest: Int? = nil
    
    private enum CodingKeys: CodingKey {
        case card, withinterest, withoutinterest
    }
    
    init(card: Double, withinterest: Int? = nil, withoutinterest: Int? = nil) {
        self.card = card
        self.withinterest = withinterest
        self.withoutinterest = withoutinterest
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        card = try container.decode(Double.self, forKey: .card)
        withinterest = try container.decodeIfPresent(Int.self, forKey: .withinterest)
        withoutinterest = try container.decodeIfPresent(Int.self, forKey: .withoutinterest)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(card, forKey: .card)
        try container.encodeIfPresent(withinterest, forKey: .withinterest)
        try container.encodeIfPresent(withoutinterest, forKey: .withoutinterest)
    }
}
