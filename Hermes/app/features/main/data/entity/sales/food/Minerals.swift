//
//  Minerals.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

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
