//
//  Vitamins.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Vitamins: Codable {
    var vitaminD: Int? = nil
    var vitaminA: Int? = nil
    var vitaminC: Int? = nil
    var vitaminE: Int? = nil
    var vitaminK: Int? = nil
    var thiamin: Int? = nil
    var riboflavin: Int? = nil
    var niacin: Int? = nil
    var vitaminB6: Int? = nil
    var folate: Int? = nil
    var folicAcid: Int? = nil
    var vitaminB12: Int? = nil
    var biotin: Int? = nil
    var pantothenicAcid: Int? = nil
    var choline: Int? = nil
    
    private enum CodingKeys: String, CodingKey {
        case vitaminD, vitaminA, vitaminC, vitaminE, vitaminK, thiamin, riboflavin, niacin, vitaminB6, folate, folicAcid, vitaminB12, biotin, pantothenicAcid, choline
    }
    
    init(vitaminD: Int? = nil, vitaminA: Int? = nil, vitaminC: Int? = nil, vitaminE: Int? = nil, vitaminK: Int? = nil, thiamin: Int? = nil, riboflavin: Int? = nil, niacin: Int? = nil, vitaminB6: Int? = nil, folate: Int? = nil, folicAcid: Int? = nil, vitaminB12: Int? = nil, biotin: Int? = nil, pantothenicAcid: Int? = nil, choline: Int? = nil) {
        self.vitaminD = vitaminD
        self.vitaminA = vitaminA
        self.vitaminC = vitaminC
        self.vitaminE = vitaminE
        self.vitaminK = vitaminK
        self.thiamin = thiamin
        self.riboflavin = riboflavin
        self.niacin = niacin
        self.vitaminB6 = vitaminB6
        self.folate = folate
        self.folicAcid = folicAcid
        self.vitaminB12 = vitaminB12
        self.biotin = biotin
        self.pantothenicAcid = pantothenicAcid
        self.choline = choline
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        vitaminD = try container.decodeIfPresent(Int.self, forKey: .vitaminD)
        vitaminA = try container.decodeIfPresent(Int.self, forKey: .vitaminA)
        vitaminC = try container.decodeIfPresent(Int.self, forKey: .vitaminC)
        vitaminE = try container.decodeIfPresent(Int.self, forKey: .vitaminE)
        vitaminK = try container.decodeIfPresent(Int.self, forKey: .vitaminK)
        thiamin = try container.decodeIfPresent(Int.self, forKey: .thiamin)
        riboflavin = try container.decodeIfPresent(Int.self, forKey: .riboflavin)
        niacin = try container.decodeIfPresent(Int.self, forKey: .niacin)
        vitaminB6 = try container.decodeIfPresent(Int.self, forKey: .vitaminB6)
        folate = try container.decodeIfPresent(Int.self, forKey: .folate)
        folicAcid = try container.decodeIfPresent(Int.self, forKey: .folicAcid)
        vitaminB12 = try container.decodeIfPresent(Int.self, forKey: .vitaminB12)
        biotin = try container.decodeIfPresent(Int.self, forKey: .biotin)
        pantothenicAcid = try container.decodeIfPresent(Int.self, forKey: .pantothenicAcid)
        choline = try container.decodeIfPresent(Int.self, forKey: .choline)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(vitaminD, forKey: .vitaminD)
        try container.encodeIfPresent(vitaminA, forKey: .vitaminA)
        try container.encodeIfPresent(vitaminC, forKey: .vitaminC)
        try container.encodeIfPresent(vitaminE, forKey: .vitaminE)
        try container.encodeIfPresent(vitaminK, forKey: .vitaminK)
        try container.encodeIfPresent(thiamin, forKey: .thiamin)
        try container.encodeIfPresent(riboflavin, forKey: .riboflavin)
        try container.encodeIfPresent(niacin, forKey: .niacin)
        try container.encodeIfPresent(vitaminB6, forKey: .vitaminB6)
        try container.encodeIfPresent(folate, forKey: .folate)
        try container.encodeIfPresent(folicAcid, forKey: .folicAcid)
        try container.encodeIfPresent(vitaminB12, forKey: .vitaminB12)
        try container.encodeIfPresent(biotin, forKey: .biotin)
        try container.encodeIfPresent(pantothenicAcid, forKey: .pantothenicAcid)
        try container.encodeIfPresent(choline, forKey: .choline)
    }
}
