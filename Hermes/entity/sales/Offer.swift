//
//  Offer.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Offer: Codable, Hashable {
    static func == (lhs: Offer, rhs: Offer) -> Bool {
        return lhs.isInOffer == rhs.isInOffer &&
        lhs.percentage == rhs.percentage
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(isInOffer)
        hasher.combine(percentage)
    }

    var isInOffer: Bool
    var percentage: Int
    
    private enum CodingKeys: CodingKey {
        case isInOffer
        case percentage
    }
    
    init(isInOffer: Bool, percentage: Int) {
        self.isInOffer = isInOffer
        self.percentage = percentage
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isInOffer = try container.decode(Bool.self, forKey: .isInOffer)
        self.percentage = try container.decode(Int.self, forKey: .percentage)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.isInOffer, forKey: .isInOffer)
        try container.encode(self.percentage, forKey: .percentage)
    }
}
