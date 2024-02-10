//
//  Connectivity.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class Connectivity: Codable {
    var cellular: [String]? = nil
    var ports: [String]
    var wireless: [String]? = nil
    
    init(cellular: [String]? = nil, ports: [String], wireless: [String]? = nil) {
        self.ports = ports
        self.cellular = cellular
        self.wireless = wireless
    }
    
    private enum CodingKeys: String, CodingKey {
        case ports, cellular, wireless
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ports = try container.decode([String].self, forKey: .ports)
        self.cellular = try container.decodeIfPresent([String].self, forKey: .cellular)
        self.wireless = try container.decodeIfPresent([String].self, forKey: .wireless)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.ports, forKey: .ports)
        try container.encodeIfPresent(self.cellular, forKey: .cellular)
        try container.encodeIfPresent(self.wireless, forKey: .wireless)
    }
}
