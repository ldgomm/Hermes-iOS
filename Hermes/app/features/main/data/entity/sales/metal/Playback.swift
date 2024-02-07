//
//  Playback.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Playback: Codable {
    var audioPlayback: [String]
    var videoPlayback: [String]? = nil
  
    private enum CodingKeys: String, CodingKey {
        case audioPlayback, videoPlayback
    }
    
    init(audioPlayback: [String], videoPlayback: [String]? = nil) {
        self.audioPlayback = audioPlayback
        self.videoPlayback = videoPlayback
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        audioPlayback = try container.decode([String].self, forKey: .audioPlayback)
        videoPlayback = try container.decodeIfPresent([String].self, forKey: .videoPlayback)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(audioPlayback, forKey: .audioPlayback)
        try container.encodeIfPresent(videoPlayback, forKey: .videoPlayback)
    }
}
