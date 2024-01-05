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
    var price: Double
    var origin: String
    var offer: Offer
    var images: Images
    var keywords: [String]
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer, images: Images, keywords: [String]) {
        self.id = id
        self.name = name
        self.price = price
        self.origin = origin
        self.offer = offer
        self.images = images
        self.keywords = keywords
    }
}

class Images: Codable, Hashable {
    static func == (lhs: Images, rhs: Images) -> Bool {
        return lhs.main == rhs.main && lhs.box == rhs.box
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(main)
        hasher.combine(box)
    }
    
    var main: MainImages
    var box: BoxImages?
    
    init(main: MainImages, box: BoxImages?) {
        self.main = main
        self.box = box
    }
}

class MainImages: Codable, Hashable {
    static func == (lhs: MainImages, rhs: MainImages) -> Bool {
        return lhs.front == rhs.front &&
               lhs.back == rhs.back &&
               lhs.left == rhs.left &&
               lhs.right == rhs.right &&
               lhs.up == rhs.up &&
               lhs.down == rhs.down
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(front)
        hasher.combine(back)
        hasher.combine(left)
        hasher.combine(right)
        hasher.combine(up)
        hasher.combine(down)
    }
    
    var front: String
    var back: String
    var left: String
    var right: String
    var up: String
    var down: String
    
    init(front: String, back: String, left: String, right: String, up: String, down: String) {
        self.front = front
        self.back = back
        self.left = left
        self.right = right
        self.up = up
        self.down = down
    }
}

class BoxImages: Codable, Hashable {
    static func == (lhs: BoxImages, rhs: BoxImages) -> Bool {
        return lhs.front == rhs.front &&
               lhs.back == rhs.back
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(front)
        hasher.combine(back)
    }
    
    var front: String
    var back: String
    
    init(front: String, back: String) {
        self.front = front
        self.back = back
    }
}

class Offer: Codable, Hashable {
    static func == (lhs: Offer, rhs: Offer) -> Bool {
        return lhs.isInOffer == rhs.isInOffer &&
        lhs.percentage == rhs.percentage
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(isInOffer)
        hasher.combine(percentage)
    }

    var isInOffer: Bool
    var percentage: Int
    
    private enum CodingKeys: CodingKey {
        case isInOffer
        case percentage
    }
    
    init(isInOffer: Bool, percentage: Int) {
        self.isInOffer = isInOffer
        self.percentage = percentage
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isInOffer = try container.decode(Bool.self, forKey: .isInOffer)
        self.percentage = try container.decode(Int.self, forKey: .percentage)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.isInOffer, forKey: .isInOffer)
        try container.encode(self.percentage, forKey: .percentage)
    }
}
