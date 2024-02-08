//
//  Interval.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class Interval: Codable {
    var startTime: Int64 = 0
    var endTime: Int64 = 0
    
    private enum CodingKeys: CodingKey {
        case startTime, endTime
    }
    
    init(startTime: Int64, endTime: Int64) {
        self.startTime = startTime
        self.endTime = endTime
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
