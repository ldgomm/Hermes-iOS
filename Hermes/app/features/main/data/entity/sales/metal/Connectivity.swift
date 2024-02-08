//
//  Connectivity.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class Connectivity: Codable {
    var ports: [String]
    var cellular: [String]? = nil
    var wireless: [String]? = nil
    
    init(ports: [String], cellular: [String]? = nil, wireless: [String]? = nil) {
        self.ports = ports
        self.cellular = cellular
        self.wireless = wireless
    }
    
    private enum CodingKeys: String, CodingKey {
        case ports, cellular, wireless
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        ports = try container.decode([String].self, forKey: .ports)
        cellular = try container.decodeIfPresent([String].self, forKey: .cellular)
        wireless = try container.decodeIfPresent([String].self, forKey: .wireless)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ports, forKey: .ports)
        try container.encodeIfPresent(cellular, forKey: .cellular)
        try container.encodeIfPresent(wireless, forKey: .wireless)
    }
}
