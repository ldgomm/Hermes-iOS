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
    
    init(model: String, colours: [String]? = nil, camera: Camera? = nil, control: Control? = nil, coolingSystem: [String]? = nil, display: Display? = nil, inBox: [String]? = nil, memory: [Int]? = nil, playback: Playback? = nil, power: Power? = nil, remoteControl: RemoteControl? = nil, sensors: [String]? = nil, smartFeatures: SmartFeatures? = nil, softwareUpdates: Bool? = nil, size: Size? = nil, storage: Storage? = nil) {
        self.model = model
        self.colours = colours
        self.camera = camera
        self.control = control
        self.coolingSystem = coolingSystem
        self.display = display
        self.inBox = inBox
        self.memory = memory
        self.playback = playback
        self.power = power
        self.remoteControl = remoteControl
        self.sensors = sensors
        self.smartFeatures = smartFeatures
        self.softwareUpdates = softwareUpdates
        self.size = size
        self.storage = storage
    }
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
  
    init(technology: String, diagonal: String, updateFrequency: Int, glow: Int, isTouch: Bool, resolution: String, features: [String], extraFeatures: [String]) {
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
