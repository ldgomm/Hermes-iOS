//
//  Storage.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Storage: Codable, Hashable {
    static func ==(lhs: Storage, rhs: Storage) -> Bool {
        return lhs.internalCapacity == rhs.internalCapacity &&
        lhs.hasExternalCapacity == rhs.hasExternalCapacity &&
        lhs.externalCapacity == rhs.externalCapacity
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(internalCapacity)
        hasher.combine(hasExternalCapacity)
        hasher.combine(externalCapacity)
    }
    
    var internalCapacity: [Int]
    var hasExternalCapacity: Bool?
    var externalCapacity: [Int]?
    
    private enum CodingKeys: CodingKey {
        case internalCapacity
        case hasExternalCapacity
        case externalCapacity
    }
    
    init(internalCapacity: [Int], hasExternalCapacity: Bool?, externalCapacity: [Int]) {
        self.internalCapacity = internalCapacity
        self.hasExternalCapacity = hasExternalCapacity
        self.externalCapacity = externalCapacity
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.internalCapacity = try container.decode([Int].self, forKey: .internalCapacity)
        self.hasExternalCapacity = try container.decodeIfPresent(Bool.self, forKey: .hasExternalCapacity)
        self.externalCapacity = try container.decodeIfPresent([Int].self, forKey: .externalCapacity)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.internalCapacity, forKey: .internalCapacity)
        try container.encodeIfPresent(self.hasExternalCapacity, forKey: .hasExternalCapacity)
        try container.encodeIfPresent(self.externalCapacity, forKey: .externalCapacity)
    }
}
