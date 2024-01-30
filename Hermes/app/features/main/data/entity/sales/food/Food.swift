//
//  Food.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Food: Product {
    
    var flavors: [String]? = nil
    var instructions: [String]? = nil
    var precautions: [String]? = nil
    var nutrientData: NutrientData? = nil
    var vitamins: Vitamins? = nil
    var minerals: Minerals? = nil
    
    init(id: String, code: Code? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, flavors: [String]? = nil, instructions: [String]? = nil, precautions: [String]? = nil, nutrientData: NutrientData? = nil, vitamins: Vitamins? = nil, minerals: Minerals? = nil) {
        self.flavors = flavors
        self.instructions = instructions
        self.precautions = precautions
        self.nutrientData = nutrientData
        self.vitamins = vitamins
        self.minerals = minerals
        
        super.init(id: id, code: code, images: images, name: name, overview: overview, specifications: specifications, offer: offer, origin: origin, price: price, stock: stock, category: category, keywords: keywords, warranty: warranty)
    }
}

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

class Tuple {
    var amount: Int? = nil
    var value: Int? = nil
    
    init(amount: Int? = nil, value: Int? = nil) {
        self.amount = amount
        self.value = value
    }
}

class Vitamins {
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
}

class Minerals {
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
}
