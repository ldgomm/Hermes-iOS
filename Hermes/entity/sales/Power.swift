//
//  Power.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Power {
    
    var isRechargeable: Bool
    var charging: [String]? = nil
    var battery: Battery? = nil
    
}

class Battery {

    var capacity: Int
    var approximateDuration: Int = nil
    var isFastCharging: Bool? = nil
    
}
