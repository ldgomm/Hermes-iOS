//
//  Battery.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Battery: Codable, Hashable {
    static func == (lhs: Battery, rhs: Battery) -> Bool {
        return lhs.isFastCharging == rhs.isFastCharging &&
        lhs.approximateDuration == rhs.approximateDuration &&
        lhs.capacity == rhs.capacity
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(isFastCharging)
        hasher.combine(approximateDuration)
        hasher.combine(capacity)
    }
    
    var isFastCharging: Bool
    var approximateDuration: Int
    var capacity: Int
    
    init(hasBattery: Bool, isFastCharging: Bool, approximateDuration: Int, capacity: Int) {
        self.isFastCharging = isFastCharging
        self.approximateDuration = approximateDuration
        self.capacity = capacity
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isFastCharging = try container.decode(Bool.self, forKey: .isFastCharging)
        self.approximateDuration = try container.decode(Int.self, forKey: .approximateDuration)
        self.capacity = try container.decode(Int.self, forKey: .capacity)
    }
    
    enum CodingKeys: CodingKey {
        case isFastCharging
        case approximateDuration
        case capacity
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.isFastCharging, forKey: .isFastCharging)
        try container.encode(self.approximateDuration, forKey: .approximateDuration)
        try container.encode(self.capacity, forKey: .capacity)
    }
}
