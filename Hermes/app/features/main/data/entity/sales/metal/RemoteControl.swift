//
//  RemoteControl.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class RemoteControl: Codable {
    var type: [String]
    var voiceControl: Bool? = nil
    
    private enum CodingKeys: CodingKey {
        case type, voiceControl
    }
    
    init(type: [String], voiceControl: Bool? = nil) {
        self.type = type
        self.voiceControl = voiceControl
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode([String].self, forKey: .type)
        self.voiceControl = try container.decodeIfPresent(Bool.self, forKey: .voiceControl)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.voiceControl, forKey: .voiceControl)
    }
}
