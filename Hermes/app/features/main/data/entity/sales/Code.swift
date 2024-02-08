//
//  Code.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Codes: Codable {
    var bar: String? = nil
    var qr: String? = nil
    var store: String? = nil

    private enum CodingKeys: CodingKey {
        case bar, qr, store
    }
    
    init(bar: String? = nil, qr: String? = nil, store: String? = nil) {
        self.bar = bar
        self.qr = qr
        self.store = store
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bar = try container.decodeIfPresent(String.self, forKey: .bar)
        self.qr = try container.decodeIfPresent(String.self, forKey: .qr)
        self.store = try container.decodeIfPresent(String.self, forKey: .store)

    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.bar, forKey: .bar)
        try container.encodeIfPresent(self.qr, forKey: .qr)
        try container.encodeIfPresent(self.store, forKey: .store)
    }
}
