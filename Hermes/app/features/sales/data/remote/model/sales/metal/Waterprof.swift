//
//  Waterprof.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Waterproof: Codable {
    var isWaterproof: Bool
    var specification: String? = nil

    private enum CodingKeys: String, CodingKey {
        case isWaterproof, specification
    }

    init(isWaterproof: Bool, specification: String? = nil) {
        self.isWaterproof = isWaterproof
        self.specification = specification
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        isWaterproof = try container.decode(Bool.self, forKey: .isWaterproof)
        specification = try container.decodeIfPresent(String.self, forKey: .specification)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isWaterproof, forKey: .isWaterproof)
        try container.encodeIfPresent(specification, forKey: .specification)
    }
}

