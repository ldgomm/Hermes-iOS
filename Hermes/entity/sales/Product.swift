//
//  Product.swift
//  Hermes
//
//  Created by José Ruiz on 4/1/24.
//

import Foundation

class Product {
    
    var id: String
    var name: String
    var overview: [Information]
    var price: Price
    var origin: String
    var offer: Offer
    var images: Images
    var stock: Int
    var keywords: [String]
    var category: Category
    
    init(id: String, name: String, overview: [Information], price: Price, origin: String, offer: Offer, images: Images, stock: Int, keywords: [String], category: Category) {
        self.id = id
        self.name = name
        self.overview = overview
        self.price = price
        self.origin = origin
        self.offer = offer
        self.images = images
        self.stock = stock
        self.keywords = keywords
        self.category = category
    }
}

class Category {
    var mi: String
    var ni: String
    var xi: String
    
    init(mi: String, ni: String, xi: String) {
        self.mi = mi
        self.ni = ni
        self.xi = xi
    }
}
