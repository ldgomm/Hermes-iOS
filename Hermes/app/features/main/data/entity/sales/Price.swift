//
//  Price.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Price: Codable {
    var cash: Double
    var affiliate: Double? = nil
    var creditCard: CreditCard? = nil
    
    private enum CodingKeys: String, CodingKey {
        case cash, affiliate, creditCard
    }
    
    init(cash: Double, affiliate: Double? = nil, creditCard: CreditCard? = nil) {
        self.cash = cash
        self.affiliate = affiliate
        self.creditCard = creditCard
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cash = try container.decode(Double.self, forKey: .cash)
        affiliate = try container.decodeIfPresent(Double.self, forKey: .affiliate)
        creditCard = try container.decodeIfPresent(CreditCard.self, forKey: .creditCard)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cash, forKey: .cash)
        try container.encodeIfPresent(affiliate, forKey: .affiliate)
        try container.encodeIfPresent(creditCard, forKey: .creditCard)
    }
}

class CreditCard: Codable {
    var card: Double
    var withinterest: Int? = nil
    var withoutinterest: Int? = nil
    
    init(card: Double, withinterest: Int? = nil, withoutinterest: Int? = nil) {
        self.card = card
        self.withinterest = withinterest
        self.withoutinterest = withoutinterest
    }
    
    private enum CodingKeys: String, CodingKey {
        case card, withinterest, withoutinterest
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
