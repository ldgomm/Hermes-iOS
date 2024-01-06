//
//  MainImages.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class MainImages: Codable, Hashable {
    static func == (lhs: MainImages, rhs: MainImages) -> Bool {
        return lhs.front == rhs.front &&
               lhs.back == rhs.back &&
               lhs.left == rhs.left &&
               lhs.right == rhs.right &&
               lhs.up == rhs.up &&
               lhs.down == rhs.down
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(front)
        hasher.combine(back)
        hasher.combine(left)
        hasher.combine(right)
        hasher.combine(up)
        hasher.combine(down)
    }
    
    var front: String
    var back: String
    var left: String
    var right: String
    var up: String
    var down: String
    
    private enum CodingKeys: CodingKey {
        case front
        case back
        case left
        case right
        case up
        case down
    }
    
    init(front: String, back: String, left: String, right: String, up: String, down: String) {
        self.front = front
        self.back = back
        self.left = left
        self.right = right
        self.up = up
        self.down = down
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.front = try container.decode(String.self, forKey: .front)
        self.back = try container.decode(String.self, forKey: .back)
        self.left = try container.decode(String.self, forKey: .left)
        self.right = try container.decode(String.self, forKey: .right)
        self.up = try container.decode(String.self, forKey: .up)
        self.down = try container.decode(String.self, forKey: .down)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.front, forKey: .front)
        try container.encode(self.back, forKey: .back)
        try container.encode(self.left, forKey: .left)
        try container.encode(self.right, forKey: .right)
        try container.encode(self.up, forKey: .up)
        try container.encode(self.down, forKey: .down)
    }
}
