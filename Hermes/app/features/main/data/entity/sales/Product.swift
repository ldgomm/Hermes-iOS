//
//  Product.swift
//  Hermes
//
//  Created by José Ruiz on 4/1/24.
//

import Foundation

class Product {
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

    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, legal: String? = nil, warning: String? = nil) {
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
}
