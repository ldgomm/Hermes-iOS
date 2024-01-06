//
//  Camera.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Camera: Codable, Hashable {
    static func == (lhs: Camera, rhs: Camera) -> Bool {
        return lhs.system == rhs.system &&
        lhs.features == rhs.features &&
        lhs.extraFeatures == rhs.extraFeatures &&
        lhs.videoRecording == rhs.videoRecording
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(system)
        hasher.combine(features)
        hasher.combine(extraFeatures)
        hasher.combine(videoRecording)
    }
    
    private enum CodingKeys: CodingKey {
        case system
        case features
        case extraFeatures
        case videoRecording
    }
    
    var system: String
    var features: [String]
    var extraFeatures: [String]
    var videoRecording: [String]
    
    init(system: String, features: [String], extraFeatures: [String], videoRecording: [String]) {
        self.system = system
        self.features = features
        self.extraFeatures = extraFeatures
        self.videoRecording = videoRecording
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.system = try container.decode(String.self, forKey: .system)
        self.features = try container.decode([String].self, forKey: .features)
        self.extraFeatures = try container.decode([String].self, forKey: .extraFeatures)
        self.videoRecording = try container.decode([String].self, forKey: .videoRecording)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.features, forKey: .features)
        try container.encode(self.extraFeatures, forKey: .extraFeatures)
        try container.encode(self.videoRecording, forKey: .videoRecording)
    }
}
