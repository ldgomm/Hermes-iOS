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
    
    init(voltage: Int, isRechargeable: Bool, charging: [String]? = nil, battery: Battery? = nil) {
        self.voltage = voltage
        self.isRechargeable = isRechargeable
        self.charging = charging
        self.battery = battery
    }
}

class Battery {
    var type: String
    var capacity: Int? = nil
    var approximateDuration: Int? = nil
    var isFastCharging: Bool? = nil
    
    init(type: String, capacity: Int? = nil, approximateDuration: Int? = nil, isFastCharging: Bool? = nil) {
        self.type = type
        self.capacity = capacity
        self.approximateDuration = approximateDuration
        self.isFastCharging = isFastCharging
    }
}
