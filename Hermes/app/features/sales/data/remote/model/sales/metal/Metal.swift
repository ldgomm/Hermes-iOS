//
//  Metal.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Metal: Codable {
    var accessories: [String]? = nil
    var applications: [String]? = nil
    var camera: Camera? = nil
    var computerFeature: ComputerFeature? = nil
    var control: Control? = nil
    var coolingSystem: [String]? = nil
    var display: Display? = nil
    var material: String? = nil
    var memory: [Int]? = nil
    var places: Int? = nil
    var playback: Playback? = nil
    var power: Power? = nil
    var remoteControl: RemoteControl? = nil
    var sensors: [String]? = nil
    var smartFeatures: SmartFeatures? = nil
    var softwareUpdates: Bool? = nil
    var storage: Storage? = nil
    var waterproof: Waterproof? = nil
    
    private enum CodingKeys: String, CodingKey {
        case accessories, applications, camera, computerFeature, control, coolingSystem, display, material, memory, places, playback, power, remoteControl, sensors, smartFeatures, softwareUpdates, storage, waterproof
    }
    
    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, accessories: [String]? = nil, applications: [String]? = nil, camera: Camera? = nil, computerFeature: ComputerFeature? = nil, control: Control? = nil, coolingSystem: [String]? = nil, display: Display? = nil, material: String? = nil, memory: [Int]? = nil, places: Int? = nil, playback: Playback? = nil, power: Power? = nil, remoteControl: RemoteControl? = nil, sensors: [String]? = nil, smartFeatures: SmartFeatures? = nil, softwareUpdates: Bool? = nil, storage: Storage? = nil, waterproof: Waterproof? = nil) {
        self.accessories = accessories
        self.applications = applications
        self.camera = camera
        self.computerFeature = computerFeature
        self.control = control
        self.coolingSystem = coolingSystem
        self.display = display
        self.material = material
        self.memory = memory
        self.places = places
        self.playback = playback
        self.power = power
        self.remoteControl = remoteControl
        self.sensors = sensors
        self.smartFeatures = smartFeatures
        self.softwareUpdates = softwareUpdates
        self.storage = storage
        self.waterproof = waterproof
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        accessories = try container.decodeIfPresent([String].self, forKey: .accessories)
        applications = try container.decodeIfPresent([String].self, forKey: .applications)
        camera = try container.decodeIfPresent(Camera.self, forKey: .camera)
        computerFeature = try container.decodeIfPresent(ComputerFeature.self, forKey: .computerFeature)
        control = try container.decodeIfPresent(Control.self, forKey: .control)
        coolingSystem = try container.decodeIfPresent([String].self, forKey: .coolingSystem)
        display = try container.decodeIfPresent(Display.self, forKey: .display)
        material = try container.decodeIfPresent(String.self, forKey: .material)
        memory = try container.decodeIfPresent([Int].self, forKey: .memory)
        places = try container.decodeIfPresent(Int.self, forKey: .places)
        playback = try container.decodeIfPresent(Playback.self, forKey: .playback)
        power = try container.decodeIfPresent(Power.self, forKey: .power)
        remoteControl = try container.decodeIfPresent(RemoteControl.self, forKey: .remoteControl)
        sensors = try container.decodeIfPresent([String].self, forKey: .sensors)
        smartFeatures = try container.decodeIfPresent(SmartFeatures.self, forKey: .smartFeatures)
        softwareUpdates = try container.decodeIfPresent(Bool.self, forKey: .softwareUpdates)
        storage = try container.decodeIfPresent(Storage.self, forKey: .storage)
        waterproof = try container.decodeIfPresent(Waterproof.self, forKey: .waterproof)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accessories, forKey: .accessories)
        try container.encodeIfPresent(applications, forKey: .applications)
        try container.encodeIfPresent(camera, forKey: .camera)
        try container.encodeIfPresent(computerFeature, forKey: .computerFeature)
        try container.encodeIfPresent(control, forKey: .control)
        try container.encodeIfPresent(coolingSystem, forKey: .coolingSystem)
        try container.encodeIfPresent(display, forKey: .display)
        try container.encodeIfPresent(material, forKey: .material)
        try container.encodeIfPresent(memory, forKey: .memory)
        try container.encodeIfPresent(places, forKey: .places)
        try container.encodeIfPresent(playback, forKey: .playback)
        try container.encodeIfPresent(power, forKey: .power)
        try container.encodeIfPresent(remoteControl, forKey: .remoteControl)
        try container.encodeIfPresent(sensors, forKey: .sensors)
        try container.encodeIfPresent(smartFeatures, forKey: .smartFeatures)
        try container.encodeIfPresent(softwareUpdates, forKey: .softwareUpdates)
        try container.encodeIfPresent(storage, forKey: .storage)
        try container.encodeIfPresent(waterproof, forKey: .waterproof)
    }
}
