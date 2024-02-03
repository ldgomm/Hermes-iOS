//
//  Storage.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Storage: Codable {
    var internalCapacity: [Int]
    var hasExternalCapacity: Bool? = nil
    var externalCapacity: [Int]? = nil
    
    private enum CodingKeys: String, CodingKey {
        case internalCapacity, hasExternalCapacity, externalCapacity
    }
    
    init(internalCapacity: [Int], hasExternalCapacity: Bool? = nil, externalCapacity: [Int]? = nil) {
        self.internalCapacity = internalCapacity
        self.hasExternalCapacity = hasExternalCapacity
        self.externalCapacity = externalCapacity
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        internalCapacity = try container.decode([Int].self, forKey: .internalCapacity)
        hasExternalCapacity = try container.decodeIfPresent(Bool.self, forKey: .hasExternalCapacity)
        externalCapacity = try container.decodeIfPresent([Int].self, forKey: .externalCapacity)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(internalCapacity, forKey: .internalCapacity)
        try container.encodeIfPresent(hasExternalCapacity, forKey: .hasExternalCapacity)
        try container.encodeIfPresent(externalCapacity, forKey: .externalCapacity)
    }
}
