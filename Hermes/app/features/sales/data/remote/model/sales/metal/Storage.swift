//
//  Storage.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Storage: Codable {
    var externalCapacity: [Int]? = nil
    var hasExternalCapacity: Bool
    var internalCapacity: [Int]
    
    private enum CodingKeys: String, CodingKey {
        case internalCapacity, hasExternalCapacity, externalCapacity
    }
    
    init(externalCapacity: [Int]? = nil, hasExternalCapacity: Bool, internalCapacity: [Int]) {
        self.externalCapacity = externalCapacity
        self.hasExternalCapacity = hasExternalCapacity
        self.internalCapacity = internalCapacity
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.internalCapacity = try container.decode([Int].self, forKey: .internalCapacity)
        self.hasExternalCapacity = try container.decode(Bool.self, forKey: .hasExternalCapacity)
        self.externalCapacity = try container.decodeIfPresent([Int].self, forKey: .externalCapacity)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.internalCapacity, forKey: .internalCapacity)
        try container.encode(self.hasExternalCapacity, forKey: .hasExternalCapacity)
        try container.encodeIfPresent(self.externalCapacity, forKey: .externalCapacity)
    }
}
