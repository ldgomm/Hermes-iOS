//
//  Food.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Food: Product {
    var flavors: [String]? = nil
    var instructions: [String]? = nil
    var precautions: [String]? = nil
    var nutrients: Nutrients? = nil
    var vitamins: Vitamins? = nil
    var minerals: Minerals? = nil
    
    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, flavors: [String]? = nil, instructions: [String]? = nil, precautions: [String]? = nil, nutrients: Nutrients? = nil, vitamins: Vitamins? = nil, minerals: Minerals? = nil) {
        self.flavors = flavors
        self.instructions = instructions
        self.precautions = precautions
        self.nutrients = nutrients
        self.vitamins = vitamins
        self.minerals = minerals
        
        super.init(id: id, codes: codes, images: images, name: name, overview: overview, specifications: specifications, offer: offer, origin: origin, price: price, stock: stock, category: category, keywords: keywords, warranty: warranty)
    }
        
    private enum CodingKeys: String, CodingKey {
        case flavors, instructions, precautions, nutrients, vitamins, minerals
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        flavors = try container.decodeIfPresent([String].self, forKey: .flavors)
        instructions = try container.decodeIfPresent([String].self, forKey: .instructions)
        precautions = try container.decodeIfPresent([String].self, forKey: .precautions)
        nutrients = try container.decodeIfPresent(Nutrients.self, forKey: .nutrients)
        vitamins = try container.decodeIfPresent(Vitamins.self, forKey: .vitamins)
        minerals = try container.decodeIfPresent(Minerals.self, forKey: .minerals)
        
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(flavors, forKey: .flavors)
        try container.encodeIfPresent(instructions, forKey: .instructions)
        try container.encodeIfPresent(precautions, forKey: .precautions)
        try container.encodeIfPresent(nutrients, forKey: .nutrients)
        try container.encodeIfPresent(vitamins, forKey: .vitamins)
        try container.encodeIfPresent(minerals, forKey: .minerals)
        
        try super.encode(to: encoder)
    }
}
