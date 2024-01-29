//
//  Specifications.swift
//  Hermes
//
//  Created by José Ruiz on 29/1/24.
//

import Foundation

class Specifications {
    var model: String
    
    var colours: [String]? = nil
    var camera: Camera? = nil
    var control: Control? = nil
    var coolingSystem: [String]? = nil
    var display: Display? = nil
    var inBox: [String]? = nil
    var memory: [Int]? = nil
    var playback: Playback? = nil
    var power: Power? = nil
    var remoteControl: RemoteControl? = nil
    var sensors: [String]? = nil
    var smartFeatures: SmartFeatures? = nil
    var softwareUpdates: Bool? = nil
    var size: Size? = nil
    var storage: Storage? = nil
}

class Display: Codable, Hashable {
    
    var technology: String
    var diagonal: String
    var updateFrequency: Int
    var glow: Int
    var isTouch: Bool
    var resolution: String
    var features: [String]
    var extraFeatures: [String]
  
}
