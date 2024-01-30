//
//  Power.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Power {
    var voltage: Int
    var isRechargeable: Bool
    var charging: [String]? = nil
    var battery: Battery? = nil
    
}

class Battery {
    var type: String
    var capacity: Int? = nil
    var approximateDuration: Int? = nil
    var isFastCharging: Bool? = nil
    
}
