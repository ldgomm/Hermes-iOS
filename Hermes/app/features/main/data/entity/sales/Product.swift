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
    var category: Category
    var codes: Codes? = nil
    var images: Images
    var keywords: [String]
    var name: String
    var origin: String
    var overview: [Information]
    var price: Price
    var specifications: Specifications
    var stock: Int
    var warranty: Warranty

    var legal: String? = nil
    var warning: String? = nil
    
    var drinkFeature: Drink? = nil
    var foodFeature: Food? = nil
    var medicineFeature: Medicine? = nil
    var metalFeature: Metal? = nil
    
    private enum CodingKeys: CodingKey {
        case id
        case category
        case codes
        case images
        case keywords
        case name
        case origin
        case overview
        case price
        case specifications
        case stock
        case warranty
        case legal
        case warning
        case drinkFeature
        case foodFeature
        case medicineFeature
        case metalFeature
    }
    
    init(id: String, category: Category, codes: Codes? = nil, images: Images, keywords: [String], name: String, origin: String, overview: [Information], price: Price, specifications: Specifications, stock: Int, warranty: Warranty, legal: String? = nil, warning: String? = nil, drinkFeature: Drink? = nil, foodFeature: Food? = nil, medicineFeature: Medicine? = nil, metalFeature: Metal? = nil) {
        self.id = id
        self.category = category
        self.codes = codes
        self.images = images
        self.keywords = keywords
        self.name = name
        self.origin = origin
        self.overview = overview
        self.price = price
        self.specifications = specifications
        self.stock = stock
        self.warranty = warranty
        self.legal = legal
        self.warning = warning
        self.drinkFeature = drinkFeature
        self.foodFeature = foodFeature
        self.medicineFeature = medicineFeature
        self.metalFeature = metalFeature
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        category = try container.decode(Category.self, forKey: .category)
        codes = try container.decodeIfPresent(Codes.self, forKey: .codes)
        images = try container.decode(Images.self, forKey: .images)
        keywords = try container.decode([String].self, forKey: .keywords)
        name = try container.decode(String.self, forKey: .name)
        origin = try container.decode(String.self, forKey: .origin)
        overview = try container.decode([Information].self, forKey: .overview)
        price = try container.decode(Price.self, forKey: .price)
        specifications = try container.decode(Specifications.self, forKey: .specifications)
        stock = try container.decode(Int.self, forKey: .stock)
        warranty = try container.decode(Warranty.self, forKey: .warranty)
        legal = try container.decodeIfPresent(String.self, forKey: .legal)
        warning = try container.decodeIfPresent(String.self, forKey: .warning)
        drinkFeature = try container.decodeIfPresent(Drink.self, forKey: .drinkFeature)
        foodFeature = try container.decodeIfPresent(Food.self, forKey: .foodFeature)
        medicineFeature = try container.decodeIfPresent(Medicine.self, forKey: .medicineFeature)
        metalFeature = try container.decodeIfPresent(Metal.self, forKey: .metalFeature)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(category, forKey: .category)
        try container.encodeIfPresent(codes, forKey: .codes)
        try container.encode(images, forKey: .images)
        try container.encode(keywords, forKey: .keywords)
        try container.encode(name, forKey: .name)
        try container.encode(origin, forKey: .origin)
        try container.encode(overview, forKey: .overview)
        try container.encode(price, forKey: .price)
        try container.encode(specifications, forKey: .specifications)
        try container.encode(stock, forKey: .stock)
        try container.encode(warranty, forKey: .warranty)
        try container.encodeIfPresent(legal, forKey: .legal)
        try container.encodeIfPresent(warning, forKey: .warning)
        try container.encodeIfPresent(drinkFeature, forKey: .drinkFeature)
        try container.encodeIfPresent(foodFeature, forKey: .foodFeature)
        try container.encodeIfPresent(medicineFeature, forKey: .medicineFeature)
        try container.encodeIfPresent(metalFeature, forKey: .metalFeature)
    }
}
