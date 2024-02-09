//
//  Product.swift
//  Hermes
//
//  Created by José Ruiz on 4/1/24.
//

import Foundation

struct Product: Codable, Hashable, Identifiable {
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
}
