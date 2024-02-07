//
//  Images.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Images: Codable {
    var product: [Photo]
    var box: [Photo]? = nil
    
    private enum CodingKeys: String, CodingKey {
        case product, box
    }
    
    init(product: [Photo], box: [Photo]? = nil) {
        self.product = product
        self.box = box
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        product = try container.decode([Photo].self, forKey: .product)
        box = try container.decodeIfPresent([Photo].self, forKey: .box)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(product, forKey: .product)
        try container.encodeIfPresent(box, forKey: .box)
    }
}

class Photo: Codable {
    var url: String
    
    init(url: String) {
        self.url = url
    }
    
    private enum CodingKeys: String, CodingKey {
        case url
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
