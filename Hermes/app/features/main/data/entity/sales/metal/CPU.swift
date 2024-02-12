//
//  CPU.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class CPU: Codable {
    var alias: String
    var architecture: String? = nil
    var cores: Int? = nil
    var technology: String? = nil
    
    init(alias: String, architecture: String? = nil, cores: Int? = nil, technology: String? = nil) {
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
        self.alias = try container.decode(String.self, forKey: .alias)
        self.cores = try container.decodeIfPresent(Int.self, forKey: .cores)
        self.architecture = try container.decodeIfPresent(String.self, forKey: .architecture)
        self.technology = try container.decodeIfPresent(String.self, forKey: .technology)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.alias, forKey: .alias)
        try container.encodeIfPresent(self.cores, forKey: .cores)
        try container.encodeIfPresent(self.architecture, forKey: .architecture)
        try container.encodeIfPresent(self.technology, forKey: .technology)
    }
}
