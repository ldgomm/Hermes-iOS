//
//  Camera.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Camera: Codable {
    var extraFeatures: [String]? = nil
    var features: [String]
    var system: String
    var videoRecording: [String]? = nil
   
    private enum CodingKeys: CodingKey {
        case system, features, extraFeatures, videoRecording
    }
    
    init(extraFeatures: [String]? = nil, features: [String], system: String, videoRecording: [String]? = nil) {
        self.extraFeatures = extraFeatures
        self.features = features
        self.system = system
        self.videoRecording = videoRecording
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.system = try container.decode(String.self, forKey: .system)
        self.features = try container.decode([String].self, forKey: .features)
        self.extraFeatures = try container.decodeIfPresent([String].self, forKey: .extraFeatures)
        self.videoRecording = try container.decodeIfPresent([String].self, forKey: .videoRecording)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.features, forKey: .features)
        try container.encodeIfPresent(self.extraFeatures, forKey: .extraFeatures)
        try container.encodeIfPresent(self.videoRecording, forKey: .videoRecording)
    }
}
