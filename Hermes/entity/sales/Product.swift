//
//  Product.swift
//  Hermes
//
//  Created by José Ruiz on 4/1/24.
//

import Foundation

class Product {
    
    var id: String
    var code: Code? = nil
    var images: Images
    var name: String
    var overview: [Information]
    var offer: Offer
    var origin: String
    var price: Price
    var stock: Int
    var category: Category
    var keywords: [String]
    var warranty: Warranty
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

class Code {
    var bar: String? = nil
    var qr: String? = nil
}

class Warranty {
    var hasWarranty: Bool
    var months: Int? = nil
}
