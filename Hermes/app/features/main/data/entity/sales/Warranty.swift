//
//  Warranty.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Warranty {
    var hasWarranty: Bool
    var months: Int? = nil
    
    init(hasWarranty: Bool, months: Int? = nil) {
        self.hasWarranty = hasWarranty
        self.months = months
    }
}
