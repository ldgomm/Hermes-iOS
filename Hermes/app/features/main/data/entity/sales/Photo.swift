//
//  Photo.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class Photo: Codable {
    var url: String
    
    private enum CodingKeys: CodingKey {
        case url
    }
    
    init(url: String) {
        self.url = url
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        url = try container.decode(String.self, forKey: .url)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(url, forKey: .url)
    }
}
