//
//  Charging.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Charging: Codable, Hashable {
    static func == (lhs: Charging, rhs: Charging) -> Bool {
        return lhs.chargingModes == rhs.chargingModes
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(chargingModes)
    }
    
    var chargingModes: [String]
    
    init(chargingModes: [String]) {
        self.chargingModes = chargingModes
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargingModes = try container.decode([String].self, forKey: .chargingModes)
    }
    
    enum CodingKeys: CodingKey {
        case chargingModes
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.chargingModes, forKey: .chargingModes)
    }
}
