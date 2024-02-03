//
//  Drink.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Dink: Product {
    var degrees: Int? = nil
    
    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty? = nil, legal: String? = nil, warning: String? = nil, degrees: Int? = nil) {
        super.init(id: id, codes: codes, images: images, name: name, overview: overview, specifications: specifications, offer: offer, origin: origin, price: price, stock: stock, category: category, keywords: keywords, warranty: warranty, legal: legal, warning: warning)
        
        self.degrees = degrees
    }
    
    private enum CodingKeys: String, CodingKey {
        case degrees
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        degrees = try container.decodeIfPresent(Int.self, forKey: .degrees)
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(degrees, forKey: .degrees)
        try super.encode(to: encoder)
    }
}

