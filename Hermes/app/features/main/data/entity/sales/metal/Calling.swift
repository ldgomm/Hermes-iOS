//
//  Calling.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class Calling: Codable {
    var audioCalling: [String]
    var videoCalling: [String]? = nil
  
    init(audioCalling: [String], videoCalling: [String]? = nil) {
        self.videoCalling = videoCalling
        self.audioCalling = audioCalling
    }
    
    private enum CodingKeys: String, CodingKey {
        case videoCalling, audioCalling
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.videoCalling = try container.decodeIfPresent([String].self, forKey: .videoCalling)
        self.audioCalling = try container.decode([String].self, forKey: .audioCalling)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.videoCalling, forKey: .videoCalling)
        try container.encode(self.audioCalling, forKey: .audioCalling)
    }
}
