//
//  Power.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Power: Codable {
    var battery: Battery? = nil
    var charging: [String]? = nil
    var isRechargeable: Bool
    var voltage: Int
    
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
        self.voltage = try container.decode(Int.self, forKey: .voltage)
        self.isRechargeable = try container.decode(Bool.self, forKey: .isRechargeable)
        self.charging = try container.decodeIfPresent([String].self, forKey: .charging)
        self.battery = try container.decodeIfPresent(Battery.self, forKey: .battery)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.voltage, forKey: .voltage)
        try container.encode(self.isRechargeable, forKey: .isRechargeable)
        try container.encodeIfPresent(self.charging, forKey: .charging)
        try container.encodeIfPresent(self.battery, forKey: .battery)
    }
}
