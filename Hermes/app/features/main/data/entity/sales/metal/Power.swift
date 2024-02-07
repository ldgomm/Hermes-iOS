//
//  Power.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Power: Codable {
    var voltage: Int
    var isRechargeable: Bool
    var charging: [String]? = nil
    var battery: Battery? = nil
    
    init(voltage: Int, isRechargeable: Bool, charging: [String]? = nil, battery: Battery? = nil) {
        self.voltage = voltage
        self.isRechargeable = isRechargeable
        self.charging = charging
        self.battery = battery
    }

    private enum CodingKeys: String, CodingKey {
        case voltage, isRechargeable, charging, battery
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        voltage = try container.decode(Int.self, forKey: .voltage)
        isRechargeable = try container.decode(Bool.self, forKey: .isRechargeable)
        charging = try container.decodeIfPresent([String].self, forKey: .charging)
        battery = try container.decodeIfPresent(Battery.self, forKey: .battery)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(voltage, forKey: .voltage)
        try container.encode(isRechargeable, forKey: .isRechargeable)
        try container.encodeIfPresent(charging, forKey: .charging)
        try container.encodeIfPresent(battery, forKey: .battery)
    }
}

class Battery: Codable {
    var type: String
    var capacity: Int? = nil
    var approximateDuration: Int? = nil
    var isFastCharging: Bool? = nil
    
    private enum CodingKeys: String, CodingKey {
        case type, capacity, approximateDuration, isFastCharging
    }
    
    init(type: String, capacity: Int? = nil, approximateDuration: Int? = nil, isFastCharging: Bool? = nil) {
        self.type = type
        self.capacity = capacity
        self.approximateDuration = approximateDuration
        self.isFastCharging = isFastCharging
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decode(String.self, forKey: .type)
        capacity = try container.decodeIfPresent(Int.self, forKey: .capacity)
        approximateDuration = try container.decodeIfPresent(Int.self, forKey: .approximateDuration)
        isFastCharging = try container.decodeIfPresent(Bool.self, forKey: .isFastCharging)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(capacity, forKey: .capacity)
        try container.encodeIfPresent(approximateDuration, forKey: .approximateDuration)
        try container.encodeIfPresent(isFastCharging, forKey: .isFastCharging)
    }
}
