//
//  Display.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Display: Codable {
    var diagonal: String? = nil
    var extraFeatures: [String]? = nil
    var features: [String]? = nil
    var glow: Int? = nil
    var isTouch: Bool? = nil
    var resolution: String? = nil
    var technology: String
    var updateFrequency: Int? = nil
  
    private enum CodingKeys: String, CodingKey {
        case technology, diagonal, updateFrequency, glow, isTouch, resolution, features, extraFeatures
    }
    
    init(diagonal: String? = nil, extraFeatures: [String]? = nil, features: [String]? = nil, glow: Int? = nil, isTouch: Bool? = nil, resolution: String? = nil, technology: String, updateFrequency: Int? = nil) {
        self.diagonal = diagonal
        self.extraFeatures = extraFeatures
        self.features = features
        self.glow = glow
        self.isTouch = isTouch
        self.resolution = resolution
        self.technology = technology
        self.updateFrequency = updateFrequency
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.technology = try container.decode(String.self, forKey: .technology)
        self.diagonal = try container.decodeIfPresent(String.self, forKey: .diagonal)
        self.updateFrequency = try container.decodeIfPresent(Int.self, forKey: .updateFrequency)
        self.glow = try container.decodeIfPresent(Int.self, forKey: .glow)
        self.isTouch = try container.decodeIfPresent(Bool.self, forKey: .isTouch)
        self.resolution = try container.decodeIfPresent(String.self, forKey: .resolution)
        self.features = try container.decodeIfPresent([String].self, forKey: .features)
        self.extraFeatures = try container.decodeIfPresent([String].self, forKey: .extraFeatures)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.technology, forKey: .technology)
        try container.encodeIfPresent(self.diagonal, forKey: .diagonal)
        try container.encodeIfPresent(self.updateFrequency, forKey: .updateFrequency)
        try container.encodeIfPresent(self.glow, forKey: .glow)
        try container.encodeIfPresent(self.isTouch, forKey: .isTouch)
        try container.encodeIfPresent(self.resolution, forKey: .resolution)
        try container.encodeIfPresent(self.features, forKey: .features)
        try container.encodeIfPresent(self.extraFeatures, forKey: .extraFeatures)
    }
}
