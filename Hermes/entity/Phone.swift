//
//  Phone.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Phone: Electronic {
    static func == (lhs: Phone, rhs: Phone) -> Bool {
        return lhs.model == rhs.model &&
        lhs.dataStorage == rhs.dataStorage &&
        lhs.memory == rhs.memory &&
        lhs.softwareUpdates == rhs.softwareUpdates &&
        lhs.display == rhs.display &&
        lhs.os == rhs.os &&
        lhs.chip == rhs.chip &&
        lhs.camera == rhs.camera &&
        lhs.authentication == rhs.authentication &&
        lhs.paymentMethod == rhs.paymentMethod &&
        lhs.safety == rhs.safety &&
        lhs.carriers == rhs.carriers &&
        lhs.location == rhs.location &&
        lhs.calling == rhs.calling &&
        lhs.playback == rhs.playback &&
        lhs.aiAssistant == rhs.aiAssistant &&
        lhs.controls == rhs.controls &&
        lhs.power == rhs.power &&
        lhs.sensors == rhs.sensors &&
        lhs.accessibility == rhs.accessibility &&
        lhs.simCard == rhs.simCard &&
        lhs.builtInApps == rhs.builtInApps &&
        lhs.inBox == rhs.inBox
    }
    
    override func hash(into hasher: inout Hasher) {
        hasher.combine(model)
        hasher.combine(dataStorage)
        hasher.combine(memory)
        hasher.combine(softwareUpdates)
        hasher.combine(display)
        hasher.combine(os)
        hasher.combine(chip)
        hasher.combine(camera)
        hasher.combine(authentication)
        hasher.combine(paymentMethod)
        hasher.combine(safety)
        hasher.combine(carriers)
        hasher.combine(location)
        hasher.combine(calling)
        hasher.combine(playback)
        hasher.combine(aiAssistant)
        hasher.combine(controls)
        hasher.combine(power)
        hasher.combine(sensors)
        hasher.combine(accessibility)
        hasher.combine(simCard)
        hasher.combine(builtInApps)
        hasher.combine(inBox)
    }
    
    var model: String
    var dataStorage: [String]
    var memory: String
    var softwareUpdates: Bool
    var display: Display
    var os: String
    var chip: String
    var camera: Camera
    var authentication: [String]
    var paymentMethod: String
    var safety: [String]
    var carriers: [String]
    var location: [String]
    var calling: Calling
    var playback: Playback
    var aiAssistant: String
    var controls: Controls
    var power: Power
    var sensors: [String]
    var accessibility: [String]
    var simCard: [String]
    var builtInApps: [String]
    var inBox: [String]
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer,
         brand: String, connectivity: Connectivity, finish: String, capacity: Int, weight: Int, size: Size, model: String, dataStorage: [String], memory: String, softwareUpdates: Bool, display: Display, os: String, chip: String, camera: Camera, authentication: [String], paymentMethod: String, safety: [String], carriers: [String], location: [String], calling: Calling, playback: Playback, aiAssistant: String, controls: Controls, power: Power, sensors: [String], accessibility: [String], simCard: [String], builtInApps: [String], inBox: [String]) {
        self.model = model
        self.dataStorage = dataStorage
        self.memory = memory
        self.softwareUpdates = softwareUpdates
        self.display = display
        self.os = os
        self.chip = chip
        self.camera = camera
        self.authentication = authentication
        self.paymentMethod = paymentMethod
        self.safety = safety
        self.carriers = carriers
        self.location = location
        self.calling = calling
        self.playback = playback
        self.aiAssistant = aiAssistant
        self.controls = controls
        self.power = power
        self.sensors = sensors
        self.accessibility = accessibility
        self.simCard = simCard
        self.builtInApps = builtInApps
        self.inBox = inBox
        
        super.init(id: id, name: name, price: price, origin: origin, offer: offer, brand: brand, connectivity: connectivity, finish: finish, capacity: capacity, weight: weight, size: size)
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}

class Power: Codable, Hashable {
    static func == (lhs: Power, rhs: Power) -> Bool {
        return lhs.charging == rhs.charging &&
        lhs.battery == rhs.battery
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(charging)
        hasher.combine(battery)
    }
    
    var charging: Charging
    var battery: Battery
    
    init(charging: Charging, battery: Battery) {
        self.charging = charging
        self.battery = battery
    }
}

class Display: Codable, Hashable {
    static func == (lhs: Display, rhs: Display) -> Bool {
        return lhs.technology == rhs.technology &&
        lhs.diagonal == rhs.diagonal &&
        lhs.updateFrequency == rhs.updateFrequency &&
        lhs.glow == rhs.glow &&
        lhs.isTouch == rhs.isTouch &&
        lhs.resolution == rhs.resolution &&
        lhs.features == rhs.features &&
        lhs.extraFeatures == rhs.extraFeatures
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(technology)
        hasher.combine(diagonal)
        hasher.combine(updateFrequency)
        hasher.combine(glow)
        hasher.combine(isTouch)
        hasher.combine(resolution)
        hasher.combine(features)
        hasher.combine(extraFeatures)
    }
    
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

class Camera: Codable, Hashable {
    static func == (lhs: Camera, rhs: Camera) -> Bool {
        return lhs.system == rhs.system &&
        lhs.features == rhs.features &&
        lhs.extraFeatures == rhs.extraFeatures &&
        lhs.videoRecording == rhs.videoRecording
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(system)
        hasher.combine(features)
        hasher.combine(extraFeatures)
        hasher.combine(videoRecording)
    }
    
    var system: String
    var features: [String]
    var extraFeatures: [String]
    var videoRecording: [String]
    
    init(system: String, features: [String], extraFeatures: [String], videoRecording: [String]) {
        self.system = system
        self.features = features
        self.extraFeatures = extraFeatures
        self.videoRecording = videoRecording
    }
}

class Battery: Codable, Hashable {
    static func == (lhs: Battery, rhs: Battery) -> Bool {
        return lhs.isFastCharging == rhs.isFastCharging &&
        lhs.approximateDuration == rhs.approximateDuration &&
        lhs.capacity == rhs.capacity
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(isFastCharging)
        hasher.combine(approximateDuration)
        hasher.combine(capacity)
    }
    
    var isFastCharging: Bool
    var approximateDuration: Int
    var capacity: Int
    
    init(isFastCharging: Bool, approximateDuration: Int, capacity: Int) {
        self.isFastCharging = isFastCharging
        self.approximateDuration = approximateDuration
        self.capacity = capacity
    }
}

class Calling: Codable, Hashable {
    static func == (lhs: Calling, rhs: Calling) -> Bool {
        return lhs.videoCalling == rhs.videoCalling &&
        lhs.audioCalling == rhs.audioCalling
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(videoCalling)
        hasher.combine(audioCalling)
    }
    
    var videoCalling: [String]
    var audioCalling: [String]
    
    init(videoCalling: [String], audioCalling: [String]) {
        self.videoCalling = videoCalling
        self.audioCalling = audioCalling
    }
}

class Playback: Codable, Hashable {
    static func == (lhs: Playback, rhs: Playback) -> Bool {
        return lhs.audioPlayback == rhs.audioPlayback &&
        lhs.videoPlayback == rhs.videoPlayback
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(audioPlayback)
        hasher.combine(videoPlayback)
    }
    
    var audioPlayback: [String]
    var videoPlayback: [String]
    
    init(audioPlayback: [String], videoPlayback: [String]) {
        self.audioPlayback = audioPlayback
        self.videoPlayback = videoPlayback
    }
}

class Controls: Codable, Hashable {
    static func == (lhs: Controls, rhs: Controls) -> Bool {
        return lhs.externalButtons == rhs.externalButtons
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(externalButtons)
    }
    
    var externalButtons: [String]
    
    init(externalButtons: [String]) {
        self.externalButtons = externalButtons
    }
}

class Charging: Codable, Hashable {
    static func == (lhs: Charging, rhs: Charging) -> Bool {
        return lhs.chargingModes == rhs.chargingModes
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(chargingModes)
    }
    
    var chargingModes: [String]
    
    init(chargingModes: [String]) {
        self.chargingModes = chargingModes
    }
}
