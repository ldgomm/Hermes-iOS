//
//  OfferTime.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class OfferTime: Codable {
    var timeInterval: Interval? = nil
    var day: Int? = nil
    
    private enum CodingKeys: CodingKey {
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
