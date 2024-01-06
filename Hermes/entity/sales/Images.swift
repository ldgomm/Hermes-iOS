//
//  Images.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Images: Codable, Hashable {
    static func == (lhs: Images, rhs: Images) -> Bool {
        return lhs.main == rhs.main && lhs.box == rhs.box
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(main)
        hasher.combine(box)
    }
    
    var main: MainImages
    var box: BoxImages?
    
    private enum CodingKeys: CodingKey {
        case main
        case box
    }
    
    init(main: MainImages, box: BoxImages?) {
        self.main = main
        self.box = box
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.main = try container.decode(MainImages.self, forKey: .main)
        self.box = try container.decodeIfPresent(BoxImages.self, forKey: .box)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.main, forKey: .main)
        try container.encodeIfPresent(self.box, forKey: .box)
    }
}
