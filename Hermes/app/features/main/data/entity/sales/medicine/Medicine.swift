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
    
    init(administration: String? = nil, dosage: String? = nil, sideEffects: String? = nil, contraindications: String? = nil, activeIngredientContent: String? = nil, laboratory: String? = nil) {
        self.administration = administration
        self.dosage = dosage
        self.sideEffects = sideEffects
        self.contraindications = contraindications
        self.activeIngredientContent = activeIngredientContent
        self.laboratory = laboratory
    }
    
    
}
