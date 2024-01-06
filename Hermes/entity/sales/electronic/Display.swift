//
//  Display.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Display: Codable, Hashable {
    static func == (lhs: Display, rhs: Display) -> Bool {
        return lhs.technology == rhs.technology &&
        lhs.diagonal == rhs.diagonal &&
        lhs.updateFrequency == rhs.updateFrequency &&
        lhs.glow == rhs.glow &&
        lhs.isTouch == rhs.isTouch &&
        lhs.resolution == rhs.resolution &&
        lhs.features == rhs.features &&
        lhs.extraFeatures == rhs.extraFeatures
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(technology)
        hasher.combine(diagonal)
        hasher.combine(updateFrequency)
        hasher.combine(glow)
        hasher.combine(isTouch)
        hasher.combine(resolution)
        hasher.combine(features)
        hasher.combine(extraFeatures)
    }
    
    var technology: String
    var diagonal: String
    var updateFrequency: Int
    var glow: Int
    var isTouch: Bool
    var resolution: String
    var features: [String]
    var extraFeatures: [String]
    
    private enum CodingKeys: CodingKey {
        case technology
        case diagonal
        case updateFrequency
        case glow
        case isTouch
        case resolution
        case features
        case extraFeatures
    }
    init(technology: String, diagonal: String, updateFrequency: Int, glow: Int, isTouch: Bool, resolution: String, features: [String], extraFeatures: [String]) {
        self.technology = technology
        self.diagonal = diagonal
        self.updateFrequency = updateFrequency
        self.glow = glow
        self.isTouch = isTouch
        self.resolution = resolution
        self.features = features
        self.extraFeatures = extraFeatures
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.technology = try container.decode(String.self, forKey: .technology)
        self.diagonal = try container.decode(String.self, forKey: .diagonal)
        self.updateFrequency = try container.decode(Int.self, forKey: .updateFrequency)
        self.glow = try container.decode(Int.self, forKey: .glow)
        self.isTouch = try container.decode(Bool.self, forKey: .isTouch)
        self.resolution = try container.decode(String.self, forKey: .resolution)
        self.features = try container.decode([String].self, forKey: .features)
        self.extraFeatures = try container.decode([String].self, forKey: .extraFeatures)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.technology, forKey: .technology)
        try container.encode(self.diagonal, forKey: .diagonal)
        try container.encode(self.updateFrequency, forKey: .updateFrequency)
        try container.encode(self.glow, forKey: .glow)
        try container.encode(self.isTouch, forKey: .isTouch)
        try container.encode(self.resolution, forKey: .resolution)
        try container.encode(self.features, forKey: .features)
        try container.encode(self.extraFeatures, forKey: .extraFeatures)
    }
}
