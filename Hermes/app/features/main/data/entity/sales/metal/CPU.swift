//
//  CPU.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class CPU: Codable {
    var alias: String
    var cores: Int? = nil
    var architecture: String? = nil
    var technology: String? = nil
    
    init(alias: String, cores: Int? = nil, architecture: String? = nil, technology: String? = nil) {
        self.alias = alias
        self.cores = cores
        self.architecture = architecture
        self.technology = technology
    }
    
    private enum CodingKeys: CodingKey {
        case alias, cores, architecture, technology
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        cores = try container.decodeIfPresent(Int.self, forKey: .cores)
        architecture = try container.decodeIfPresent(String.self, forKey: .architecture)
        technology = try container.decodeIfPresent(String.self, forKey: .technology)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encodeIfPresent(cores, forKey: .cores)
        try container.encodeIfPresent(architecture, forKey: .architecture)
        try container.encodeIfPresent(technology, forKey: .technology)
    }
}
