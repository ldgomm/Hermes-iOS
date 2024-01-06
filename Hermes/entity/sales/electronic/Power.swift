//
//  Power.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Power: Codable, Hashable {
    static func == (lhs: Power, rhs: Power) -> Bool {
        return lhs.charging == rhs.charging &&
        lhs.battery == rhs.battery
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(charging)
        hasher.combine(battery)
    }
    
    var isRechargeable: Bool
    var charging: Charging?
    var battery: Battery?
    
    private enum CodingKeys: CodingKey {
        case isRechargeable
        case charging
        case battery
    }
    
    init(isRechargeable: Bool, charging: Charging? = nil, battery: Battery? = nil) {
        self.isRechargeable = isRechargeable
        self.charging = charging
        self.battery = battery
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isRechargeable = try container.decode(Bool.self, forKey: .isRechargeable)
        self.charging = try container.decodeIfPresent(Charging.self, forKey: .charging)
        self.battery = try container.decodeIfPresent(Battery.self, forKey: .battery)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.isRechargeable, forKey: .isRechargeable)
        try container.encodeIfPresent(self.charging, forKey: .charging)
        try container.encodeIfPresent(self.battery, forKey: .battery)
    }
}
