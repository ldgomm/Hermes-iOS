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
    var codes: Codes? = nil
    var images: Images
    var name: String
    var overview: [Information]
    var specifications: Specifications? = nil
    var offer: Offer
    var origin: String
    var price: Price
    var stock: Int
    var category: Category
    var keywords: [String]
    var warranty: Warranty? = nil
    var legal: String? = nil
    var warning: String? = nil
    
    private enum CodingKeys: CodingKey {
        case id, codes, images, name, overview, specifications, offer, origin, price, stock, category, keywords, warranty, legal, warning
    }

    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty? = nil, legal: String? = nil, warning: String? = nil) {
        self.id = id
        self.codes = codes
        self.images = images
        self.name = name
        self.overview = overview
        self.specifications = specifications
        self.offer = offer
        self.origin = origin
        self.price = price
        self.stock = stock
        self.category = category
        self.keywords = keywords
        self.warranty = warranty
        self.legal = legal
        self.warning = warning
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        codes = try container.decodeIfPresent(Codes.self, forKey: .codes)
        images = try container.decode(Images.self, forKey: .images)
        name = try container.decode(String.self, forKey: .name)
        overview = try container.decode([Information].self, forKey: .overview)
        specifications = try container.decodeIfPresent(Specifications.self, forKey: .specifications)
        offer = try container.decode(Offer.self, forKey: .offer)
        origin = try container.decode(String.self, forKey: .origin)
        price = try container.decode(Price.self, forKey: .price)
        stock = try container.decode(Int.self, forKey: .stock)
        category = try container.decode(Category.self, forKey: .category)
        keywords = try container.decode([String].self, forKey: .keywords)
        warranty = try container.decodeIfPresent(Warranty.self, forKey: .warranty)
        legal = try container.decodeIfPresent(String.self, forKey: .legal)
        warning = try container.decodeIfPresent(String.self, forKey: .warning)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(codes, forKey: .codes)
        try container.encode(images, forKey: .images)
        try container.encode(name, forKey: .name)
        try container.encode(overview, forKey: .overview)
        try container.encodeIfPresent(specifications, forKey: .specifications)
        try container.encode(offer, forKey: .offer)
        try container.encode(origin, forKey: .origin)
        try container.encode(price, forKey: .price)
        try container.encode(stock, forKey: .stock)
        try container.encode(category, forKey: .category)
        try container.encode(keywords, forKey: .keywords)
        try container.encodeIfPresent(warranty, forKey: .warranty)
        try container.encodeIfPresent(legal, forKey: .legal)
        try container.encodeIfPresent(warning, forKey: .warning)
    }
}
