//
//  Waterprof.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Waterproof {
    var isWaterproof: Bool
    var specification: String? = nil
    
    init(isWaterproof: Bool, specification: String? = nil) {
        self.isWaterproof = isWaterproof
        self.specification = specification
    }
}

