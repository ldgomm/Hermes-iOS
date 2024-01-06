//
//  Memory.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Memory: Codable, Hashable {
    static func ==(lhs: Memory, rhs: Memory) -> Bool {
        return lhs.capacity == rhs.capacity
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(capacity)
    }
    
    var capacity: [Int]
    
    private enum CodingKeys: CodingKey {
        case capacity
    }
    
    init(capacity: [Int]) {
        self.capacity = capacity
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capacity = try container.decode([Int].self, forKey: .capacity)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.capacity, forKey: .capacity)
    }
}
