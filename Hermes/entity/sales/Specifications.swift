//
//  Specifications.swift
//  Hermes
//
//  Created by José Ruiz on 29/1/24.
//

import Foundation

class Specifications {
    var accessories: [String]? = nil
    var applications: [String]? = nil
    var models: [String]? = nil
    var colours: [String]? = nil
    var camera: Camera? = nil
    var capacity: Int? = nil
    var control: Control? = nil
    var coolingSystem: [String]? = nil
    var display: Display? = nil
    var finished: String? = nil
    var inBox: [String]? = nil
    var kind: String? = nil
    var material: String? = nil
    var memory: [Int]? = nil
    var places: Int? = nil
    var playback: Playback? = nil
    var power: Power? = nil
    var remoteControl: RemoteControl? = nil
    var sensors: [String]? = nil
    var smartFeatures: SmartFeatures? = nil
    var softwareUpdates: Bool? = nil
    var size: Size? = nil
    var storage: Storage? = nil
    var waterproof: Waterproof? = nil
    
}

class Display{
    
    var technology: String
    var diagonal: String? = nil
    var updateFrequency: Int? = nil
    var glow: Int? = nil
    var isTouch: Bool? = nil
    var resolution: String? = nil
    var features: [String]? = nil
    var extraFeatures: [String]? = nil
  
}

class Waterproof {
    var isWaterproof: Bool
    var specification: String? = nil
}
