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
}

class OfferTime {
    var timeInterval: Interval? = nil
    var day: Int? = nil
}

class Interval {
    var startTime: Int64 = 0
    var endTime: Int64 = 0
}

