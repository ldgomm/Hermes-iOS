//
//  Size.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Size: Codable, Hashable {
    static func == (lhs: Size, rhs: Size) -> Bool {
        return lhs.height == rhs.height && lhs.width == rhs.width && lhs.deep == rhs.deep
    }
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(height)
            hasher.combine(width)
            hasher.combine(deep)
    }
    
    var height: Double
    var width: Double
    var deep: Double
    
    private enum CodingKeys: CodingKey {
        case height
        case width
        case deep
    }
    
    init(height: Double, width: Double, deep: Double) {
        self.height = height
        self.width = width
        self.deep = deep
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.height = try container.decode(Double.self, forKey: .height)
        self.width = try container.decode(Double.self, forKey: .width)
        self.deep = try container.decode(Double.self, forKey: .deep)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.height, forKey: .height)
        try container.encode(self.width, forKey: .width)
        try container.encode(self.deep, forKey: .deep)
    }
}
