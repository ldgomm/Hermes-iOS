//
//  Food.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Food: Codable {
    var flavors: [String]? = nil
    var instructions: [String]? = nil
    var minerals: Minerals? = nil
    var nutrients: Nutrients? = nil
    var precautions: [String]? = nil
    var vitamins: Vitamins? = nil
    
    private enum CodingKeys: CodingKey {
        case flavors, instructions, minerals, nutrients, precautions, vitamins
    }
    
    init(flavors: [String]? = nil, instructions: [String]? = nil, minerals: Minerals? = nil, nutrients: Nutrients? = nil, precautions: [String]? = nil, vitamins: Vitamins? = nil) {
        self.flavors = flavors
        self.instructions = instructions
        self.minerals = minerals
        self.nutrients = nutrients
        self.precautions = precautions
        self.vitamins = vitamins
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flavors = try container.decodeIfPresent([String].self, forKey: .flavors)
        self.instructions = try container.decodeIfPresent([String].self, forKey: .instructions)
        self.minerals = try container.decodeIfPresent(Minerals.self, forKey: .minerals)
        self.nutrients = try container.decodeIfPresent(Nutrients.self, forKey: .nutrients)
        self.precautions = try container.decodeIfPresent([String].self, forKey: .precautions)
        self.vitamins = try container.decodeIfPresent(Vitamins.self, forKey: .vitamins)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.flavors, forKey: .flavors)
        try container.encodeIfPresent(self.instructions, forKey: .instructions)
        try container.encodeIfPresent(self.minerals, forKey: .minerals)
        try container.encodeIfPresent(self.nutrients, forKey: .nutrients)
        try container.encodeIfPresent(self.precautions, forKey: .precautions)
        try container.encodeIfPresent(self.vitamins, forKey: .vitamins)
    }
}
