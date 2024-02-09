//
//  NutrientData.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

struct Nutrients: Codable {
    var calories: Int? = nil
    var totalFat: Tuple? = nil
    var saturatedFat: Tuple? = nil
    var transFat: Tuple? = nil
    var cholesterol: Tuple? = nil
    var sodium: Tuple? = nil
    var totalCarbohydrate: Tuple? = nil
    var dietaryFiber: Tuple? = nil
    var totalSugars: Int? = nil
    var addedSugars: Tuple? = nil
    var protein: Tuple? = nil
}

