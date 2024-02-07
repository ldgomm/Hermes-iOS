//
//  Offer.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Offer: Codable {
    var isActive: Bool = false
    var discountPercentage: Int? = nil
    var time: OfferTime? = nil
    
    private enum CodingKeys: String, CodingKey {
        case isActive, discountPercentage, time
    }
    
    init(isActive: Bool, discountPercentage: Int? = nil, time: OfferTime? = nil) {
        self.isActive = isActive
        self.discountPercentage = discountPercentage
        self.time = time
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        isActive = try container.decode(Bool.self, forKey: .isActive)
        discountPercentage = try container.decodeIfPresent(Int.self, forKey: .discountPercentage)
        time = try container.decodeIfPresent(OfferTime.self, forKey: .time)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isActive, forKey: .isActive)
        try container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
        try container.encodeIfPresent(time, forKey: .time)
    }
}

class OfferTime: Codable {
    var timeInterval: Interval? = nil
    var day: Int? = nil
    
    private enum CodingKeys: String, CodingKey {
        case timeInterval, day
    }
    
    init(timeInterval: Interval? = nil, day: Int? = nil) {
        self.timeInterval = timeInterval
        self.day = day
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        timeInterval = try container.decodeIfPresent(Interval.self, forKey: .timeInterval)
        day = try container.decodeIfPresent(Int.self, forKey: .day)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(timeInterval, forKey: .timeInterval)
        try container.encodeIfPresent(day, forKey: .day)
    }
}

class Interval: Codable {
    var startTime: Int64 = 0
    var endTime: Int64 = 0
    
    init(startTime: Int64, endTime: Int64) {
        self.startTime = startTime
        self.endTime = endTime
    }
    
    private enum CodingKeys: String, CodingKey {
        case startTime, endTime
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        startTime = try container.decode(Int64.self, forKey: .startTime)
        endTime = try container.decode(Int64.self, forKey: .endTime)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
    }
}
