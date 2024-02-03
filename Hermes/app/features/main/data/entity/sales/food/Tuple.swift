//
//  Tuple.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Tuple: Codable {
    var amount: Int? = nil
    var value: Int? = nil
    
    init(amount: Int? = nil, value: Int? = nil) {
        self.amount = amount
        self.value = value
    }
    
    // MARK: - Codable
    
    private enum CodingKeys: String, CodingKey {
        case amount, value
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        amount = try container.decodeIfPresent(Int.self, forKey: .amount)
        value = try container.decodeIfPresent(Int.self, forKey: .value)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(value, forKey: .value)
    }
}
