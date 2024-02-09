//
//  Medicine.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

struct Medicine: Codable {
    var activeIngredientContent: String? = nil
    var administration: String
    var contraindications: String? = nil
    var dosage: String? = nil
    var laboratory: String
    var sideEffects: String? = nil
}
