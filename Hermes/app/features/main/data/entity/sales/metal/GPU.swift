//
//  GPU.swift
//  Hermes
//
//  Created by José Ruiz on 8/2/24.
//

import Foundation

class GPU: Codable {
    var alias: String
    var cores: Int? = nil
    var displayConnectors: [String]? = nil
    var compatibilityWithSpecificTechnologies: [String]? = nil
    var coolingDesign: String? = nil
    var supportForMultiMonitor: Bool? = nil
    
    private enum CodingKeys: CodingKey {
        case alias, cores, displayConnectors, compatibilityWithSpecificTechnologies, coolingDesign, supportForMultiMonitor
    }
    
    init(alias: String, cores: Int? = nil, displayConnectors: [String]? = nil, compatibilityWithSpecificTechnologies: [String]? = nil, coolingDesign: String? = nil, supportForMultiMonitor: Bool? = nil) {
        self.alias = alias
        self.cores = cores
        self.displayConnectors = displayConnectors
        self.compatibilityWithSpecificTechnologies = compatibilityWithSpecificTechnologies
        self.coolingDesign = coolingDesign
        self.supportForMultiMonitor = supportForMultiMonitor
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        cores = try container.decodeIfPresent(Int.self, forKey: .cores)
        displayConnectors = try container.decodeIfPresent([String].self, forKey: .displayConnectors)
        compatibilityWithSpecificTechnologies = try container.decodeIfPresent([String].self, forKey: .compatibilityWithSpecificTechnologies)
        coolingDesign = try container.decodeIfPresent(String.self, forKey: .coolingDesign)
        supportForMultiMonitor = try container.decodeIfPresent(Bool.self, forKey: .supportForMultiMonitor)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encodeIfPresent(cores, forKey: .cores)
        try container.encodeIfPresent(displayConnectors, forKey: .displayConnectors)
        try container.encodeIfPresent(compatibilityWithSpecificTechnologies, forKey: .compatibilityWithSpecificTechnologies)
        try container.encodeIfPresent(coolingDesign, forKey: .coolingDesign)
        try container.encodeIfPresent(supportForMultiMonitor, forKey: .supportForMultiMonitor)
    }
}
