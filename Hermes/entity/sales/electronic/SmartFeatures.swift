//
//  SmartFeatures.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class SmartFeatures: Codable, Hashable {
    static func == (lhs: SmartFeatures, rhs: SmartFeatures) -> Bool {
        return lhs.aiAssistant == rhs.aiAssistant &&
               lhs.extraFeatures == rhs.extraFeatures
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(aiAssistant)
        hasher.combine(extraFeatures)
    }

    var aiAssistant: String
    var extraFeatures: [String]

    private enum CodingKeys: CodingKey {
        case aiAssistant
        case extraFeatures
    }
    
    init(aiAssistant: String, extraFeatures: [String]) {
        self.aiAssistant = aiAssistant
        self.extraFeatures = extraFeatures
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.aiAssistant = try container.decode(String.self, forKey: .aiAssistant)
        self.extraFeatures = try container.decode([String].self, forKey: .extraFeatures)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.aiAssistant, forKey: .aiAssistant)
        try container.encode(self.extraFeatures, forKey: .extraFeatures)
    }
}
