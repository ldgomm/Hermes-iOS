//
//  Chip.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class Chip: Codable {
    var alias: String
    var cpu: CPU? = nil
    var gpu: GPU? = nil
  
    init(alias: String, cpu: CPU? = nil, gpu: GPU? = nil) {
        self.alias = alias
        self.cpu = cpu
        self.gpu = gpu
    }
    
    private enum CodingKeys: CodingKey {
        case alias, cpu, gpu
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        cpu = try container.decodeIfPresent(CPU.self, forKey: .cpu)
        gpu = try container.decodeIfPresent(GPU.self, forKey: .gpu)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encodeIfPresent(cpu, forKey: .cpu)
        try container.encodeIfPresent(gpu, forKey: .gpu)
    }
}
