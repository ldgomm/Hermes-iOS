//
//  Vitamins.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

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
