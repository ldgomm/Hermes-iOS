//
//  Medicine.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Medicine: Product {
    var administration: String? = nil
    var dosage: String? = nil
    var sideEffects: String? = nil
    var contraindications: String? = nil
    var activeIngredientContent: String? = nil
    var laboratory: String? = nil
    
    private enum CodingKeys: String, CodingKey {
        case administration, dosage, sideEffects, contraindications, activeIngredientContent, laboratory
    }
    
    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, administration: String? = nil, dosage: String? = nil, sideEffects: String? = nil, contraindications: String? = nil, activeIngredientContent: String? = nil, laboratory: String? = nil, legal: String? = nil, warning: String? = nil) {
        self.administration = administration
        self.dosage = dosage
        self.sideEffects = sideEffects
        self.contraindications = contraindications
        self.activeIngredientContent = activeIngredientContent
        self.laboratory = laboratory
        
        super.init(id: id, codes: codes, images: images, name: name, overview: overview, specifications: specifications, offer: offer, origin: origin, price: price, stock: stock, category: category, keywords: keywords, warranty: warranty, legal: legal, warning: warning)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        administration = try container.decodeIfPresent(String.self, forKey: .administration)
        dosage = try container.decodeIfPresent(String.self, forKey: .dosage)
        sideEffects = try container.decodeIfPresent(String.self, forKey: .sideEffects)
        contraindications = try container.decodeIfPresent(String.self, forKey: .contraindications)
        activeIngredientContent = try container.decodeIfPresent(String.self, forKey: .activeIngredientContent)
        laboratory = try container.decodeIfPresent(String.self, forKey: .laboratory)
        
        try super.init(from: decoder)
    }

    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(administration, forKey: .administration)
        try container.encodeIfPresent(dosage, forKey: .dosage)
        try container.encodeIfPresent(sideEffects, forKey: .sideEffects)
        try container.encodeIfPresent(contraindications, forKey: .contraindications)
        try container.encodeIfPresent(activeIngredientContent, forKey: .activeIngredientContent)
        try container.encodeIfPresent(laboratory, forKey: .laboratory)
        
        try super.encode(to: encoder)
    }
}
