//
//  Code.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Codes: Codable {

    var store: String? = nil
    var bar: String? = nil
    var qr: String? = nil
    
    private enum CodingKeys: CodingKey {
        case store
        case bar
        case qr
    }
    
    init(store: String? = nil, bar: String? = nil, qr: String? = nil) {
        self.store = store
        self.bar = bar
        self.qr = qr
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.store = try container.decodeIfPresent(String.self, forKey: .store)
        self.bar = try container.decodeIfPresent(String.self, forKey: .bar)
        self.qr = try container.decodeIfPresent(String.self, forKey: .qr)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.store, forKey: .store)
        try container.encodeIfPresent(self.bar, forKey: .bar)
        try container.encodeIfPresent(self.qr, forKey: .qr)
    }
}
