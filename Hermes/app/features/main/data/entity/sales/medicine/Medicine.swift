//
//  Medicine.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Medicine: Codable {
    var activeIngredientContent: String? = nil
    var administration: String? = nil
    var contraindications: String? = nil
    var dosage: String? = nil
    var laboratory: String? = nil
    var sideEffects: String? = nil
    
    enum CodingKeys: CodingKey {
        case activeIngredientContent, administration, contraindications, dosage, laboratory, sideEffects
    }
    
    init(activeIngredientContent: String? = nil, administration: String? = nil, contraindications: String? = nil, dosage: String? = nil, laboratory: String? = nil, sideEffects: String? = nil) {
        self.activeIngredientContent = activeIngredientContent
        self.administration = administration
        self.contraindications = contraindications
        self.dosage = dosage
        self.laboratory = laboratory
        self.sideEffects = sideEffects
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.activeIngredientContent = try container.decodeIfPresent(String.self, forKey: .activeIngredientContent)
        self.administration = try container.decodeIfPresent(String.self, forKey: .administration)
        self.contraindications = try container.decodeIfPresent(String.self, forKey: .contraindications)
        self.dosage = try container.decodeIfPresent(String.self, forKey: .dosage)
        self.laboratory = try container.decodeIfPresent(String.self, forKey: .laboratory)
        self.sideEffects = try container.decodeIfPresent(String.self, forKey: .sideEffects)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.activeIngredientContent, forKey: .activeIngredientContent)
        try container.encodeIfPresent(self.administration, forKey: .administration)
        try container.encodeIfPresent(self.contraindications, forKey: .contraindications)
        try container.encodeIfPresent(self.dosage, forKey: .dosage)
        try container.encodeIfPresent(self.laboratory, forKey: .laboratory)
        try container.encodeIfPresent(self.sideEffects, forKey: .sideEffects)
    }
}
