//
//  NutrientData.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Nutrients: Codable {
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
        
    private enum CodingKeys: String, CodingKey {
        case calories, totalFat, saturatedFat, transFat, cholesterol, sodium, totalCarbohydrate, dietaryFiber, totalSugars, addedSugars, protein
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        calories = try container.decodeIfPresent(Int.self, forKey: .calories)
        totalFat = try container.decodeIfPresent(Tuple.self, forKey: .totalFat)
        saturatedFat = try container.decodeIfPresent(Tuple.self, forKey: .saturatedFat)
        transFat = try container.decodeIfPresent(Tuple.self, forKey: .transFat)
        cholesterol = try container.decodeIfPresent(Tuple.self, forKey: .cholesterol)
        sodium = try container.decodeIfPresent(Tuple.self, forKey: .sodium)
        totalCarbohydrate = try container.decodeIfPresent(Tuple.self, forKey: .totalCarbohydrate)
        dietaryFiber = try container.decodeIfPresent(Tuple.self, forKey: .dietaryFiber)
        totalSugars = try container.decodeIfPresent(Int.self, forKey: .totalSugars)
        addedSugars = try container.decodeIfPresent(Tuple.self, forKey: .addedSugars)
        protein = try container.decodeIfPresent(Tuple.self, forKey: .protein)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(calories, forKey: .calories)
        try container.encodeIfPresent(totalFat, forKey: .totalFat)
        try container.encodeIfPresent(saturatedFat, forKey: .saturatedFat)
        try container.encodeIfPresent(transFat, forKey: .transFat)
        try container.encodeIfPresent(cholesterol, forKey: .cholesterol)
        try container.encodeIfPresent(sodium, forKey: .sodium)
        try container.encodeIfPresent(totalCarbohydrate, forKey: .totalCarbohydrate)
        try container.encodeIfPresent(dietaryFiber, forKey: .dietaryFiber)
        try container.encodeIfPresent(totalSugars, forKey: .totalSugars)
        try container.encodeIfPresent(addedSugars, forKey: .addedSugars)
        try container.encodeIfPresent(protein, forKey: .protein)
    }
}

