//
//  Display.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Display: Codable {
    var technology: String
    var diagonal: String? = nil
    var updateFrequency: Int? = nil
    var glow: Int? = nil
    var isTouch: Bool? = nil
    var resolution: String? = nil
    var features: [String]? = nil
    var extraFeatures: [String]? = nil
  
    init(technology: String, diagonal: String? = nil, updateFrequency: Int? = nil, glow: Int? = nil, isTouch: Bool? = nil, resolution: String? = nil, features: [String]? = nil, extraFeatures: [String]? = nil) {
        self.technology = technology
        self.diagonal = diagonal
        self.updateFrequency = updateFrequency
        self.glow = glow
        self.isTouch = isTouch
        self.resolution = resolution
        self.features = features
        self.extraFeatures = extraFeatures
    }
    
    // MARK: - Codable
    
    private enum CodingKeys: String, CodingKey {
        case technology, diagonal, updateFrequency, glow, isTouch, resolution, features, extraFeatures
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        technology = try container.decode(String.self, forKey: .technology)
        diagonal = try container.decodeIfPresent(String.self, forKey: .diagonal)
        updateFrequency = try container.decodeIfPresent(Int.self, forKey: .updateFrequency)
        glow = try container.decodeIfPresent(Int.self, forKey: .glow)
        isTouch = try container.decodeIfPresent(Bool.self, forKey: .isTouch)
        resolution = try container.decodeIfPresent(String.self, forKey: .resolution)
        features = try container.decodeIfPresent([String].self, forKey: .features)
        extraFeatures = try container.decodeIfPresent([String].self, forKey: .extraFeatures)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(technology, forKey: .technology)
        try container.encodeIfPresent(diagonal, forKey: .diagonal)
        try container.encodeIfPresent(updateFrequency, forKey: .updateFrequency)
        try container.encodeIfPresent(glow, forKey: .glow)
        try container.encodeIfPresent(isTouch, forKey: .isTouch)
        try container.encodeIfPresent(resolution, forKey: .resolution)
        try container.encodeIfPresent(features, forKey: .features)
        try container.encodeIfPresent(extraFeatures, forKey: .extraFeatures)
    }
}
