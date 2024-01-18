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
    var overview: [Information]
    var price: Price
    var origin: String
    var offer: Offer
    var images: Images
    var stock: Int
    var colours: [String]?
    var keywords: [String]
    var category: String
    var subcategory: String
    
    private enum CodingKeys: CodingKey {
        case id
        case name
        case overview
        case price
        case origin
        case offer
        case images
        case stock
        case colours
        case keywords
        case category
        case subcategory
    }
    
    init(id: String, name: String, overview: [Information], price: Price, origin: String = "Ecuador", offer: Offer, images: Images, stock: Int = 1, colours: [String]? = ["Negro"], keywords: [String], category: String, subcategory: String) {
        self.id = id
        self.name = name
        self.overview = overview
        self.price = price
        self.origin = origin
        self.offer = offer
        self.images = images
        self.stock = stock
        self.colours = colours
        self.keywords = keywords
        self.category = category
        self.subcategory = subcategory
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.overview = try container.decode([Information].self, forKey: .overview)
        self.price = try container.decode(Price.self, forKey: .price)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.offer = try container.decode(Offer.self, forKey: .offer)
        self.images = try container.decode(Images.self, forKey: .images)
        self.stock = try container.decode(Int.self, forKey: .stock)
        self.colours = try container.decodeIfPresent([String].self, forKey: .colours)
        self.keywords = try container.decode([String].self, forKey: .keywords)
        self.category = try container.decode(String.self, forKey: .category)
        self.subcategory = try container.decode(String.self, forKey: .subcategory)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.overview, forKey: .overview)
        try container.encode(self.price, forKey: .price)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.offer, forKey: .offer)
        try container.encode(self.images, forKey: .images)
        try container.encode(self.stock, forKey: .stock)
        try container.encodeIfPresent(self.colours, forKey: .colours)
        try container.encode(self.keywords, forKey: .keywords)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.subcategory, forKey: .subcategory)
    }
}
