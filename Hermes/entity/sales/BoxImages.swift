//
//  BoxImages.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class BoxImages: Codable, Hashable {
    static func == (lhs: BoxImages, rhs: BoxImages) -> Bool {
        return lhs.front == rhs.front &&
               lhs.back == rhs.back
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(front)
        hasher.combine(back)
    }
    
    var front: String
    var back: String
    
    private enum CodingKeys: CodingKey {
        case front
        case back
    }
    
    init(front: String, back: String) {
        self.front = front
        self.back = back
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.front = try container.decode(String.self, forKey: .front)
        self.back = try container.decode(String.self, forKey: .back)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.front, forKey: .front)
        try container.encode(self.back, forKey: .back)
    }
}
