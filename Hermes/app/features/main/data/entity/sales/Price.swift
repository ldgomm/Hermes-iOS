//
//  Price.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Price: Codable {
    var cash: [String: Double]
//    var affiliate: [String: Double]? = nil
    var creditCard: CreditCard? = nil
    var offer: Offer
    
    private enum CodingKeys: CodingKey {
        case cash, /*affiliate,*/ creditCard, offer
    }
    
    init(cash: [String: Double], /*affiliate: [String: Double]? = nil,*/ creditCard: CreditCard? = nil, offer: Offer) {
        self.cash = cash
//        self.affiliate = affiliate
        self.creditCard = creditCard
        self.offer = offer
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        cash = try container.decode([String: Double].self, forKey: .cash)
//        affiliate = try container.decodeIfPresent([String: Double].self, forKey: .affiliate)
        creditCard = try container.decodeIfPresent(CreditCard.self, forKey: .creditCard)
        offer = try container.decode(Offer.self, forKey: .offer)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cash, forKey: .cash)
//        try container.encodeIfPresent(affiliate, forKey: .affiliate)
        try container.encodeIfPresent(creditCard, forKey: .creditCard)
        try container.encode(offer, forKey: .offer)
    }
}
