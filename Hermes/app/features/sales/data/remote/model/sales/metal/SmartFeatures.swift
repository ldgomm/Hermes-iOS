//
//  SmartFeatures.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class SmartFeatures: Codable {
    var aiAssistant: String? = nil
    var extraFeatures: [String]? = nil
    var features: [String]
    
    private enum CodingKeys: String, CodingKey {
        case features, aiAssistant, extraFeatures
    }
    
    init(aiAssistant: String? = nil, extraFeatures: [String]? = nil, features: [String]) {
        self.aiAssistant = aiAssistant
        self.extraFeatures = extraFeatures
        self.features = features
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.features = try container.decode([String].self, forKey: .features)
        self.aiAssistant = try container.decodeIfPresent(String.self, forKey: .aiAssistant)
        self.extraFeatures = try container.decodeIfPresent([String].self, forKey: .extraFeatures)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.features, forKey: .features)
        try container.encodeIfPresent(self.aiAssistant, forKey: .aiAssistant)
        try container.encodeIfPresent(self.extraFeatures, forKey: .extraFeatures)
    }
}
