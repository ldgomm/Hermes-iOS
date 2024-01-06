//
//  Connectivity.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Connectivity: Codable, Hashable {
    static func == (lhs: Connectivity, rhs: Connectivity) -> Bool {
        return lhs.ports == rhs.ports &&
        lhs.cellular == rhs.cellular &&
        lhs.wireless == rhs.wireless
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ports)
        hasher.combine(cellular)
        hasher.combine(wireless)
    }
    
    var ports: [String]
    var cellular: [String]
    var wireless: [String]
    
    private enum CodingKeys: CodingKey {
        case ports
        case cellular
        case wireless
    }
    
    init(ports: [String], cellular: [String], wireless: [String]) {
        self.ports = ports
        self.cellular = cellular
        self.wireless = wireless
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ports = try container.decode([String].self, forKey: .ports)
        self.cellular = try container.decode([String].self, forKey: .cellular)
        self.wireless = try container.decode([String].self, forKey: .wireless)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.ports, forKey: .ports)
        try container.encode(self.cellular, forKey: .cellular)
        try container.encode(self.wireless, forKey: .wireless)
    }
}
