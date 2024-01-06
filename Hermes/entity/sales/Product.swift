//
//  Product.swift
//  Hermes
//
//  Created by José Ruiz on 4/1/24.
//

import Foundation

class Product: Codable, Hashable, Identifiable {
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: String
    var name: String
    var price: Double
    var origin: String
    var offer: Offer
    var images: Images
    var keywords: [String]
    
    private enum CodingKeys: CodingKey {
        case id
        case name
        case price
        case origin
        case offer
        case images
        case keywords
    }
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer, images: Images, keywords: [String]) {
        self.id = id
        self.name = name
        self.price = price
        self.origin = origin
        self.offer = offer
        self.images = images
        self.keywords = keywords
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.price = try container.decode(Double.self, forKey: .price)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.offer = try container.decode(Offer.self, forKey: .offer)
        self.images = try container.decode(Images.self, forKey: .images)
        self.keywords = try container.decode([String].self, forKey: .keywords)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.price, forKey: .price)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.offer, forKey: .offer)
        try container.encode(self.images, forKey: .images)
        try container.encode(self.keywords, forKey: .keywords)
    }
}
