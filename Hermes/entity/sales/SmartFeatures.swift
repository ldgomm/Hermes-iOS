//
//  SmartFeatures.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class SmartFeatures {
    var features: [String]

    var aiAssistant: String? = nil
    var extraFeatures: [String]? = nil

    init(features: [String], aiAssistant: String? = nil, extraFeatures: [String]? = nil) {
        self.features = features
        self.aiAssistant = aiAssistant
        self.extraFeatures = extraFeatures
    }
}
