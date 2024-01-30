//
//  Offer.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Offer {
    var isActive: Bool = false
    var discountPercentage: Int? = nil
    var time: OfferTime? = nil
    
    init(isActive: Bool, discountPercentage: Int? = nil, time: OfferTime? = nil) {
        self.isActive = isActive
        self.discountPercentage = discountPercentage
        self.time = time
    }
}

class OfferTime {
    var timeInterval: Interval? = nil
    var day: Int? = nil
    
    init(timeInterval: Interval? = nil, day: Int? = nil) {
        self.timeInterval = timeInterval
        self.day = day
    }
}

class Interval {
    var startTime: Int64 = 0
    var endTime: Int64 = 0
    
    init(startTime: Int64, endTime: Int64) {
        self.startTime = startTime
        self.endTime = endTime
    }
}

