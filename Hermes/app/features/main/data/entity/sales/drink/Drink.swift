//
//  Drink.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Drink: Codable {
    var degrees: Int? = nil
    
    private enum CodingKeys: CodingKey {
        case degrees
    }
    
    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty? = nil, legal: String? = nil, warning: String? = nil, degrees: Int? = nil) {
        
    }
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        degrees = try container.decodeIfPresent(Int.self, forKey: .degrees)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(degrees, forKey: .degrees)
    }
}

