//
//  Specifications.swift
//  Hermes
//
//  Created by José Ruiz on 29/1/24.
//

import Foundation

class Specifications: Codable {
    var models: [String]? = nil
    var colours: [String]? = nil
    var capacity: Int? = nil
    var finished: String? = nil
    var inBox: [String]? = nil
    var kind: String? = nil
    var size: Size? = nil
    
    private enum CodingKeys: CodingKey {
        case models, colours, capacity, finished, inBox, kind, size
    }
    
    init(models: [String]? = nil, colours: [String]? = nil, capacity: Int? = nil, finished: String? = nil, inBox: [String]? = nil, kind: String? = nil, size: Size? = nil) {
        self.models = models
        self.colours = colours
        self.capacity = capacity
        self.finished = finished
        self.inBox = inBox
        self.kind = kind
        self.size = size
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        models = try container.decodeIfPresent([String].self, forKey: .models)
        colours = try container.decodeIfPresent([String].self, forKey: .colours)
        capacity = try container.decodeIfPresent(Int.self, forKey: .capacity)
        finished = try container.decodeIfPresent(String.self, forKey: .finished)
        inBox = try container.decodeIfPresent([String].self, forKey: .inBox)
        kind = try container.decodeIfPresent(String.self, forKey: .kind)
        size = try container.decodeIfPresent(Size.self, forKey: .size)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(models, forKey: .models)
        try container.encodeIfPresent(colours, forKey: .colours)
        try container.encodeIfPresent(capacity, forKey: .capacity)
        try container.encodeIfPresent(finished, forKey: .finished)
        try container.encodeIfPresent(inBox, forKey: .inBox)
        try container.encodeIfPresent(kind, forKey: .kind)
        try container.encodeIfPresent(size, forKey: .size)
    }
}
