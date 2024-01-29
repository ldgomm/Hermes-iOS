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
    
}

class Category {
    var mi: String
    var ni: String
    var xi: String
}
