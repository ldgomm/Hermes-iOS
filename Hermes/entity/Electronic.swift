//
//  Electronic.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Electronic: Product {
    static func == (lhs: Electronic, rhs: Electronic) -> Bool {
        return lhs.id == rhs.id &&
            lhs.brand == rhs.brand &&
            lhs.connectivity == rhs.connectivity &&
            lhs.finish == rhs.finish &&
            lhs.capacity == rhs.capacity &&
            lhs.weight == rhs.weight &&
            lhs.size == rhs.size
    }
    
    override func hash(into hasher: inout Hasher) {
        super.hash(into: &hasher)
        hasher.combine(brand)
        hasher.combine(connectivity)
        hasher.combine(finish)
        hasher.combine(capacity)
        hasher.combine(weight)
        hasher.combine(size)
    }
    
    var brand: String
    var connectivity: Connectivity
    var finish: String
    var capacity: Int
    var weight: Int
    var size: Size
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer,
         brand: String, connectivity: Connectivity, finish: String, capacity: Int, weight: Int, size: Size) {
        self.brand = brand
        self.connectivity = connectivity
        self.finish = finish
        self.capacity = capacity
        self.weight = weight
        self.size = size
        
        super.init(id: id, name: name, price: price, origin: origin, offer: offer)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}

class Connectivity: Codable, Hashable {
    static func == (lhs: Connectivity, rhs: Connectivity) -> Bool {
        return lhs.usb == rhs.usb &&
        lhs.cellular == rhs.cellular &&
        lhs.wireless == rhs.wireless
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(usb)
        hasher.combine(cellular)
        hasher.combine(wireless)
    }
    
    var usb: String
    var cellular: [String]
    var wireless: [String]
    
    init(usb: String, cellular: [String], wireless: [String]) {
        self.usb = usb
        self.cellular = cellular
        self.wireless = wireless
    }
}

class Size: Codable, Hashable {
    static func == (lhs: Size, rhs: Size) -> Bool {
            return lhs.height == rhs.height && lhs.width == rhs.width
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(height)
            hasher.combine(width)
    }
    
    var height: Double
    var width: Double
    
    init(height: Double, width: Double) {
        self.height = height
        self.width = width
    }
}
