//
//  Overview.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Overview: Codable, Hashable {
    static func == (lhs: Overview, rhs: Overview) -> Bool {
        return lhs.title == rhs.title &&
        lhs.subtitle == rhs.subtitle &&
        lhs.body == rhs.body &&
        lhs.image == rhs.image
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
        hasher.combine(subtitle)
        hasher.combine(body)
        hasher.combine(image)
    }
    
    var title: String
    var subtitle: String
    var body: String
    var image: String
    
    private enum CodingKeys: CodingKey {
        case title
        case subtitle
        case body
        case image
    }
    
    init(title: String, subtitle: String, body: String, image: String) {
        self.title = title
        self.subtitle = subtitle
        self.body = body
        self.image = image
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.title = try container.decode(String.self, forKey: .title)
        self.subtitle = try container.decode(String.self, forKey: .subtitle)
        self.body = try container.decode(String.self, forKey: .body)
        self.image = try container.decode(String.self, forKey: .image)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.subtitle, forKey: .subtitle)
        try container.encode(self.body, forKey: .body)
        try container.encode(self.image, forKey: .image)
    }
}
