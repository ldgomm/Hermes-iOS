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
    var price: Double
    var origin: String
    var offer: Offer
    
    
    
}

class Offer {
    var isInOffer: Bool
    var percentage: Int
    
    init(isInOffer: Bool, percentage: Int) {
        self.isInOffer = isInOffer
        self.percentage = percentage
    }
}

class Electronic: Product {
    var brand: String
    var conectivity: [String]
    var material: String
    
}


class Phone: Electronic {
    var model: String
    var dataStorage: [String]
    var memory: String
    var softwareUpdates: Bool
    var display: Bool
    var os: String
    
}
