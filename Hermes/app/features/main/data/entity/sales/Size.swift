//
//  Size.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Size {
    var height: Double
    var width: Double
    var deep: Double? = nil
    var unit: String
    
    init(height: Double, width: Double, deep: Double? = nil, unit: String) {
        self.height = height
        self.width = width
        self.deep = deep
        self.unit = unit
    }
}
