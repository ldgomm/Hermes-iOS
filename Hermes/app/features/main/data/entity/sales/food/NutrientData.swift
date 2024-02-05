//
//  NutrientData.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class NutrientData {
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
    
    init(calories: Int? = nil, totalFat: Tuple? = nil, saturatedFat: Tuple? = nil, transFat: Tuple? = nil, cholesterol: Tuple? = nil, sodium: Tuple? = nil, totalCarbohydrate: Tuple? = nil, dietaryFiber: Tuple? = nil, totalSugars: Int? = nil, addedSugars: Tuple? = nil, protein: Tuple? = nil) {
        self.calories = calories
        self.totalFat = totalFat
        self.saturatedFat = saturatedFat
        self.transFat = transFat
        self.cholesterol = cholesterol
        self.sodium = sodium
        self.totalCarbohydrate = totalCarbohydrate
        self.dietaryFiber = dietaryFiber
        self.totalSugars = totalSugars
        self.addedSugars = addedSugars
        self.protein = protein
    }
}
