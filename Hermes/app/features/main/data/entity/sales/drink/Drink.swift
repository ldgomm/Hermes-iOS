//
//  Drink.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Drink: Codable {
    var degrees: Int
    
    private enum CodingKeys: CodingKey {
        case degrees
    }
    
    init(degrees: Int) {
        self.degrees = degrees
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        degrees = try container.decode(Int.self, forKey: .degrees)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(degrees, forKey: .degrees)
    }
}

