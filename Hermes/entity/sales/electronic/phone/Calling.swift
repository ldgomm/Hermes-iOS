//
//  Calling.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Calling: Codable, Hashable {
    static func == (lhs: Calling, rhs: Calling) -> Bool {
        return lhs.videoCalling == rhs.videoCalling &&
        lhs.audioCalling == rhs.audioCalling
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(videoCalling)
        hasher.combine(audioCalling)
    }
    
    var videoCalling: [String]
    var audioCalling: [String]
    
    private enum CodingKeys: CodingKey {
        case videoCalling
        case audioCalling
    }
    
    init(videoCalling: [String], audioCalling: [String]) {
        self.videoCalling = videoCalling
        self.audioCalling = audioCalling
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.videoCalling = try container.decode([String].self, forKey: .videoCalling)
        self.audioCalling = try container.decode([String].self, forKey: .audioCalling)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.videoCalling, forKey: .videoCalling)
        try container.encode(self.audioCalling, forKey: .audioCalling)
    }
}
