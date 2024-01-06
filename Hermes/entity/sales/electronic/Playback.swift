//
//  Playback.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Playback: Codable, Hashable {
    static func == (lhs: Playback, rhs: Playback) -> Bool {
        return lhs.audioPlayback == rhs.audioPlayback &&
        lhs.videoPlayback == rhs.videoPlayback
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(audioPlayback)
        hasher.combine(videoPlayback)
    }
    
    var audioPlayback: [String]
    var videoPlayback: [String]?
    
    private enum CodingKeys: CodingKey {
        case audioPlayback
        case videoPlayback
    }
    
    init(audioPlayback: [String], videoPlayback: [String]? = nil) {
        self.audioPlayback = audioPlayback
        self.videoPlayback = videoPlayback
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.audioPlayback = try container.decode([String].self, forKey: .audioPlayback)
        self.videoPlayback = try container.decodeIfPresent([String].self, forKey: .videoPlayback)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.audioPlayback, forKey: .audioPlayback)
        try container.encodeIfPresent(self.videoPlayback, forKey: .videoPlayback)
    }
}
