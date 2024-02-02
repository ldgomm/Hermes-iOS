//
//  Size.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Size: Codable {
    var width: Double
    var height: Double
    var deep: Double? = nil
    var unit: String
    
    private enum CodingKeys: CodingKey {
        case width
        case height
        case deep
        case unit
    }
    
    init(width: Double, height: Double, deep: Double? = nil, unit: String) {
        self.width = width
        self.height = height
        self.deep = deep
        self.unit = unit
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.width = try container.decode(Double.self, forKey: .width)
        self.height = try container.decode(Double.self, forKey: .height)
        self.deep = try container.decodeIfPresent(Double.self, forKey: .deep)
        self.unit = try container.decode(String.self, forKey: .unit)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.width, forKey: .width)
        try container.encode(self.height, forKey: .height)
        try container.encodeIfPresent(self.deep, forKey: .deep)
        try container.encode(self.unit, forKey: .unit)
    }
}
