//
//  Battery.swift
//  Hermes
//
//  Created by José Ruiz on 12/2/24.
//

import Foundation

class Battery: Codable {
    var capacity: Int? = nil
    var duration: Int? = nil
    var type: String
    var isFastCharging: Bool? = nil
    
    private enum CodingKeys: String, CodingKey {
        case type, capacity, duration, isFastCharging
    }
    
    init(capacity: Int? = nil, duration: Int? = nil, type: String, isFastCharging: Bool? = nil) {
        self.capacity = capacity
        self.duration = duration
        self.type = type
        self.isFastCharging = isFastCharging
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(String.self, forKey: .type)
        self.capacity = try container.decodeIfPresent(Int.self, forKey: .capacity)
        self.duration = try container.decodeIfPresent(Int.self, forKey: .duration)
        self.isFastCharging = try container.decodeIfPresent(Bool.self, forKey: .isFastCharging)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.capacity, forKey: .capacity)
        try container.encodeIfPresent(self.duration, forKey: .duration)
        try container.encodeIfPresent(self.isFastCharging, forKey: .isFastCharging)
    }
}
