//
//  Offer.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Offer: Codable {
    var isActive: Bool
    var discountPercentage: Int? = nil
//    var time: OfferTime? = nil
    
    private enum CodingKeys: CodingKey {
        case isActive, discountPercentage //, time
    }
    
    init(isActive: Bool, discountPercentage: Int? = nil/*, time: OfferTime? = nil*/) {
        self.isActive = isActive
        self.discountPercentage = discountPercentage
//        self.time = time
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        isActive = try container.decode(Bool.self, forKey: .isActive)
        discountPercentage = try container.decodeIfPresent(Int.self, forKey: .discountPercentage)
//        time = try container.decodeIfPresent(OfferTime.self, forKey: .time)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isActive, forKey: .isActive)
        try container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
//        try container.encodeIfPresent(time, forKey: .time)
    }
}
