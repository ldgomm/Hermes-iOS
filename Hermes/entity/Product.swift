//
//  Product.swift
//  Hermes
//
//  Created by José Ruiz on 4/1/24.
//

import Foundation

class Product: Codable, Hashable, Identifiable {
    var id: String
    var name: String
    var price: Double
    var origin: String
    var offer: Offer
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer) {
        self.id = id
        self.name = name
        self.price = price
        self.origin = origin
        self.offer = offer
    }
    
    // Conforming to Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    // Conforming to Identifiable
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
    
}

class Offer: Codable, Hashable {
    var isInOffer: Bool
    var percentage: Int
    
    init(isInOffer: Bool, percentage: Int) {
        self.isInOffer = isInOffer
        self.percentage = percentage
    }
    
    // Implementing Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(isInOffer)
        hasher.combine(percentage)
    }
    
    // Implementing Equatable
    static func == (lhs: Offer, rhs: Offer) -> Bool {
        return lhs.isInOffer == rhs.isInOffer &&
        lhs.percentage == rhs.percentage
    }
}
