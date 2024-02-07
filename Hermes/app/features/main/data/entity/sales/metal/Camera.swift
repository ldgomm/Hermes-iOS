//
//  Camera.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Camera: Codable {
    var system: String
    var features: [String]
    var extraFeatures: [String]? = nil
    var videoRecording: [String]? = nil
   
    private enum CodingKeys: String, CodingKey {
        case system, features, extraFeatures, videoRecording
    }
    
    init(system: String, features: [String], extraFeatures: [String]? = nil, videoRecording: [String]? = nil) {
        self.system = system
        self.features = features
        self.extraFeatures = extraFeatures
        self.videoRecording = videoRecording
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        system = try container.decode(String.self, forKey: .system)
        features = try container.decode([String].self, forKey: .features)
        extraFeatures = try container.decodeIfPresent([String].self, forKey: .extraFeatures)
        videoRecording = try container.decodeIfPresent([String].self, forKey: .videoRecording)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(system, forKey: .system)
        try container.encode(features, forKey: .features)
        try container.encodeIfPresent(extraFeatures, forKey: .extraFeatures)
        try container.encodeIfPresent(videoRecording, forKey: .videoRecording)
    }
}
