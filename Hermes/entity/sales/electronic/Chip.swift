//
//  Chip.swift
//  Hermes
//
//  Created by José Ruiz on 8/1/24.
//

import Foundation

class Chip: Codable, Hashable {
    static func == (lhs: Chip, rhs: Chip) -> Bool {
        return lhs.alias == rhs.alias &&
        lhs.cpu == rhs.cpu &&
        lhs.gpu == rhs.gpu
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(alias)
        hasher.combine(cpu)
        hasher.combine(gpu)
    }
    
    private enum CodingKeys: CodingKey {
        case alias
        case cpu
        case gpu
    }
    
    var alias: String
    var cpu: String
    var gpu: String
    
    init(alias: String, cpu: String, gpu: String) {
        self.alias = alias
        self.cpu = cpu
        self.gpu = gpu
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.alias = try container.decode(String.self, forKey: .alias)
        self.cpu = try container.decode(String.self, forKey: .cpu)
        self.gpu = try container.decode(String.self, forKey: .gpu)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.alias, forKey: .alias)
        try container.encode(self.cpu, forKey: .cpu)
        try container.encode(self.gpu, forKey: .gpu)
    }
}
