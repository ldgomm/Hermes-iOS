//
//  Metal.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Metal: Product {
    var accessories: [String]? = nil
    var applications: [String]? = nil
    var camera: Camera? = nil
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
    
    init(id: String, code: Code? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, accessories: [String]? = nil, applications: [String]? = nil, camera: Camera? = nil, control: Control? = nil, coolingSystem: [String]? = nil, display: Display? = nil, material: String? = nil, memory: [Int]? = nil, places: Int? = nil, playback: Playback? = nil, power: Power? = nil, remoteControl: RemoteControl? = nil, sensors: [String]? = nil, smartFeatures: SmartFeatures? = nil, softwareUpdates: Bool? = nil, storage: Storage? = nil, waterproof: Waterproof? = nil) {
        self.accessories = accessories
        self.applications = applications
        self.camera = camera
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
        
        super.init(id: id, code: code, images: images, name: name, overview: overview, specifications: specifications, offer: offer, origin: origin, price: price, stock: stock, category: category, keywords: keywords, warranty: warranty)
    }
}
