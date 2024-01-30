//
//  Display.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Display {
    var technology: String
    var diagonal: String? = nil
    var updateFrequency: Int? = nil
    var glow: Int? = nil
    var isTouch: Bool? = nil
    var resolution: String? = nil
    var features: [String]? = nil
    var extraFeatures: [String]? = nil
  
    init(technology: String, diagonal: String? = nil, updateFrequency: Int? = nil, glow: Int? = nil, isTouch: Bool? = nil, resolution: String? = nil, features: [String]? = nil, extraFeatures: [String]? = nil) {
        self.technology = technology
        self.diagonal = diagonal
        self.updateFrequency = updateFrequency
        self.glow = glow
        self.isTouch = isTouch
        self.resolution = resolution
        self.features = features
        self.extraFeatures = extraFeatures
    }
}
