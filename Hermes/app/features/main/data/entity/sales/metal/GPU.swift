//
//  GPU.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class GPU: Codable {
    var alias: String
    var compatibilityWithSpecificTechnologies: [String]? = nil
    var coolingDesign: String? = nil
    var cores: Int? = nil
    var displayConnectors: [String]? = nil
    var supportForMultiMonitor: Bool? = nil
    
    private enum CodingKeys: CodingKey {
        case alias, cores, displayConnectors, compatibilityWithSpecificTechnologies, coolingDesign, supportForMultiMonitor
    }
    
    init(alias: String, cores: Int? = nil, compatibilityWithSpecificTechnologies: [String]? = nil, coolingDesign: String? = nil, displayConnectors: [String]? = nil, supportForMultiMonitor: Bool? = nil) {
        self.alias = alias
        self.cores = cores
        self.displayConnectors = displayConnectors
        self.compatibilityWithSpecificTechnologies = compatibilityWithSpecificTechnologies
        self.coolingDesign = coolingDesign
        self.supportForMultiMonitor = supportForMultiMonitor
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.alias = try container.decode(String.self, forKey: .alias)
        self.cores = try container.decodeIfPresent(Int.self, forKey: .cores)
        self.displayConnectors = try container.decodeIfPresent([String].self, forKey: .displayConnectors)
        self.compatibilityWithSpecificTechnologies = try container.decodeIfPresent([String].self, forKey: .compatibilityWithSpecificTechnologies)
        self.coolingDesign = try container.decodeIfPresent(String.self, forKey: .coolingDesign)
        self.supportForMultiMonitor = try container.decodeIfPresent(Bool.self, forKey: .supportForMultiMonitor)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.alias, forKey: .alias)
        try container.encodeIfPresent(self.cores, forKey: .cores)
        try container.encodeIfPresent(self.displayConnectors, forKey: .displayConnectors)
        try container.encodeIfPresent(self.compatibilityWithSpecificTechnologies, forKey: .compatibilityWithSpecificTechnologies)
        try container.encodeIfPresent(self.coolingDesign, forKey: .coolingDesign)
        try container.encodeIfPresent(self.supportForMultiMonitor, forKey: .supportForMultiMonitor)
    }
}
