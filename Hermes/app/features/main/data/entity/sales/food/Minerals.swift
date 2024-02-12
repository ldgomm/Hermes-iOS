//
//  Minerals.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Minerals: Codable {
    var calcium: Int? = nil
    var iron: Int? = nil
    var potassium: Int? = nil
    var phosphorus: Int? = nil
    var iodine: Int? = nil
    var magnesium: Int? = nil
    var zinc: Int? = nil
    var selenium: Int? = nil
    var copper: Int? = nil
    var manganese: Int? = nil
    var chromium: Int? = nil
    var molybdenum: Int? = nil
    var chloride: Int? = nil
    
    private enum CodingKeys: CodingKey {
        case calcium, iron, potassium, phosphorus, iodine, magnesium, zinc, selenium, copper, manganese, chromium, molybdenum, chloride
    }
    
    init(calcium: Int? = nil, iron: Int? = nil, potassium: Int? = nil, phosphorus: Int? = nil, iodine: Int? = nil, magnesium: Int? = nil, zinc: Int? = nil, selenium: Int? = nil, copper: Int? = nil, manganese: Int? = nil, chromium: Int? = nil, molybdenum: Int? = nil, chloride: Int? = nil) {
        self.calcium = calcium
        self.iron = iron
        self.potassium = potassium
        self.phosphorus = phosphorus
        self.iodine = iodine
        self.magnesium = magnesium
        self.zinc = zinc
        self.selenium = selenium
        self.copper = copper
        self.manganese = manganese
        self.chromium = chromium
        self.molybdenum = molybdenum
        self.chloride = chloride
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        calcium = try container.decodeIfPresent(Int.self, forKey: .calcium)
        iron = try container.decodeIfPresent(Int.self, forKey: .iron)
        potassium = try container.decodeIfPresent(Int.self, forKey: .potassium)
        phosphorus = try container.decodeIfPresent(Int.self, forKey: .phosphorus)
        iodine = try container.decodeIfPresent(Int.self, forKey: .iodine)
        magnesium = try container.decodeIfPresent(Int.self, forKey: .magnesium)
        zinc = try container.decodeIfPresent(Int.self, forKey: .zinc)
        selenium = try container.decodeIfPresent(Int.self, forKey: .selenium)
        copper = try container.decodeIfPresent(Int.self, forKey: .copper)
        manganese = try container.decodeIfPresent(Int.self, forKey: .manganese)
        chromium = try container.decodeIfPresent(Int.self, forKey: .chromium)
        molybdenum = try container.decodeIfPresent(Int.self, forKey: .molybdenum)
        chloride = try container.decodeIfPresent(Int.self, forKey: .chloride)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(calcium, forKey: .calcium)
        try container.encodeIfPresent(iron, forKey: .iron)
        try container.encodeIfPresent(potassium, forKey: .potassium)
        try container.encodeIfPresent(phosphorus, forKey: .phosphorus)
        try container.encodeIfPresent(iodine, forKey: .iodine)
        try container.encodeIfPresent(magnesium, forKey: .magnesium)
        try container.encodeIfPresent(zinc, forKey: .zinc)
        try container.encodeIfPresent(selenium, forKey: .selenium)
        try container.encodeIfPresent(copper, forKey: .copper)
        try container.encodeIfPresent(manganese, forKey: .manganese)
        try container.encodeIfPresent(chromium, forKey: .chromium)
        try container.encodeIfPresent(molybdenum, forKey: .molybdenum)
        try container.encodeIfPresent(chloride, forKey: .chloride)
    }
}
