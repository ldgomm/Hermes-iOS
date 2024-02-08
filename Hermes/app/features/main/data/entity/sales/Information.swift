//
//  Overview.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Information: Codable {
    var title: String
    var subtitle: String
    var body: String
    var photo: Photo
    
    private enum CodingKeys: CodingKey {
        case title, subtitle, body, photo
    }
    
    init(title: String, subtitle: String, body: String, photo: Photo) {
        self.title = title
        self.subtitle = subtitle
        self.body = body
        self.photo = photo
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        subtitle = try container.decode(String.self, forKey: .subtitle)
        body = try container.decode(String.self, forKey: .body)
        photo = try container.decode(Photo.self, forKey: .photo)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(subtitle, forKey: .subtitle)
        try container.encode(body, forKey: .body)
        try container.encode(photo, forKey: .photo)
    }
}
