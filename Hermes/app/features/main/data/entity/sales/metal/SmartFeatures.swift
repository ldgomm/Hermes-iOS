//
//  SmartFeatures.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class SmartFeatures: Codable {
    var features: [String]
    var aiAssistant: String? = nil
    var extraFeatures: [String]? = nil
    
    private enum CodingKeys: String, CodingKey {
        case features, aiAssistant, extraFeatures
    }
    
    init(features: [String], aiAssistant: String? = nil, extraFeatures: [String]? = nil) {
        self.features = features
        self.aiAssistant = aiAssistant
        self.extraFeatures = extraFeatures
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        features = try container.decode([String].self, forKey: .features)
        aiAssistant = try container.decodeIfPresent(String.self, forKey: .aiAssistant)
        extraFeatures = try container.decodeIfPresent([String].self, forKey: .extraFeatures)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(features, forKey: .features)
        try container.encodeIfPresent(aiAssistant, forKey: .aiAssistant)
        try container.encodeIfPresent(extraFeatures, forKey: .extraFeatures)
    }
}
