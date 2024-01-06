//
//  Price.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Price: Codable, Hashable {
    static func == (lhs: Price, rhs: Price) -> Bool {
        return lhs.cash == rhs.cash &&
        lhs.card == rhs.card &&
        lhs.months == rhs.months
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(cash)
        hasher.combine(card)
        hasher.combine(months)
    }
    
    private enum CodingKeys: CodingKey {
        case cash
        case card
        case months
    }
    
    var cash: Double
    var card: Double?
    var months: Int?
    
    init(cash: Double, card: Double? = nil, months: Int? = nil) {
        self.cash = cash
        self.card = card
        self.months = months
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cash = try container.decode(Double.self, forKey: .cash)
        self.card = try container.decodeIfPresent(Double.self, forKey: .card)
        self.months = try container.decodeIfPresent(Int.self, forKey: .months)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.cash, forKey: .cash)
        try container.encodeIfPresent(self.card, forKey: .card)
        try container.encodeIfPresent(self.months, forKey: .months)
    }
}
