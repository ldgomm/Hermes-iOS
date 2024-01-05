//
//  Electronic.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Electronic: Product {
    static func == (lhs: Electronic, rhs: Electronic) -> Bool {
        return lhs.id == rhs.id &&
            lhs.brand == rhs.brand &&
            lhs.connectivity == rhs.connectivity &&
            lhs.finish == rhs.finish &&
            lhs.capacity == rhs.capacity &&
            lhs.weight == rhs.weight &&
            lhs.size == rhs.size &&
            lhs.power == rhs.power &&
            lhs.camera == rhs.camera &&
            lhs.control == rhs.control &&
            lhs.display == rhs.display &&
            lhs.playback == rhs.playback &&
            lhs.softwareUpdates == rhs.softwareUpdates &&
            lhs.sensors == rhs.sensors &&
            lhs.smartFeatures == rhs.smartFeatures &&
            lhs.remoteControl == rhs.remoteControl
        
    }
    
    override func hash(into hasher: inout Hasher) {
        super.hash(into: &hasher)
        hasher.combine(brand)
        hasher.combine(connectivity)
        hasher.combine(finish)
        hasher.combine(capacity)
        hasher.combine(weight)
        hasher.combine(size)
        hasher.combine(power)
        hasher.combine(camera)
        hasher.combine(control)
        hasher.combine(display)
        hasher.combine(playback)
        hasher.combine(softwareUpdates)
        hasher.combine(sensors)
        hasher.combine(smartFeatures)
        hasher.combine(remoteControl)
    }
    
    var brand: String
    var connectivity: Connectivity?
    var finish: String
    var capacity: Int?
    var weight: Int
    var size: Size
    var power: Power
    var camera: Camera?
    var control: Control
    var display: Display?
    var playback: Playback?
    var softwareUpdates: Bool?
    var sensors: [String]?
    var smartFeatures: SmartFeatures?
    var remoteControl: RemoteControl?
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer, images: Images, keywords: [String],
         brand: String, connectivity: Connectivity, finish: String, capacity: Int?, weight: Int, size: Size, power: Power, camera:Camera?, control: Control, display: Display?, playback: Playback?, softwareUpdates: Bool?, sensors: [String]?, smartFeatures: SmartFeatures?, remoteControl: RemoteControl?) {
        self.brand = brand
        self.connectivity = connectivity
        self.finish = finish
        self.capacity = capacity
        self.weight = weight
        self.size = size
        self.power = power
        self.camera = camera
        self.control = control
        self.display = display
        self.playback = playback
        self.softwareUpdates = softwareUpdates
        self.sensors = sensors
        self.smartFeatures = smartFeatures
        self.remoteControl = remoteControl
        
        super.init(id: id, name: name, price: price, origin: origin, offer: offer, images: images, keywords: keywords)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        brand = try container.decode(String.self, forKey: .brand)
        connectivity = try container.decodeIfPresent(Connectivity.self, forKey: .connectivity)
        finish = try container.decode(String.self, forKey: .finish)
        capacity = try container.decodeIfPresent(Int.self, forKey: .capacity)
        weight = try container.decode(Int.self, forKey: .weight)
        size = try container.decode(Size.self, forKey: .size)
        power = try container.decode(Power.self, forKey: .power)
        camera = try container.decodeIfPresent(Camera.self, forKey: .camera)
        control = try container.decode(Control.self, forKey: .control)
        display = try container.decodeIfPresent(Display.self, forKey: .display)
        playback = try container.decodeIfPresent(Playback.self, forKey: .playback)
        softwareUpdates = try container.decodeIfPresent(Bool.self, forKey: .softwareUpdates)
        sensors = try container.decodeIfPresent([String].self, forKey: .sensors)
        smartFeatures = try container.decodeIfPresent(SmartFeatures.self, forKey: .smartFeatures)
        remoteControl = try container.decodeIfPresent(RemoteControl.self, forKey: .remoteControl)

        try super.init(from: decoder)
    }
    
    private enum CodingKeys: String, CodingKey {
        case brand
        case connectivity
        case finish
        case capacity
        case weight
        case size
        case power
        case camera
        case control
        case display
        case playback
        case softwareUpdates
        case sensors
        case smartFeatures
        case remoteControl
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        // Encode the properties specific to Electronic class
        try container.encode(brand, forKey: .brand)
        try container.encode(connectivity, forKey: .connectivity)
        try container.encode(finish, forKey: .finish)
        try container.encode(capacity, forKey: .capacity)
        try container.encode(weight, forKey: .weight)
        try container.encode(size, forKey: .size)
        try container.encode(power, forKey: .power)
        try container.encode(camera, forKey: .camera)
        try container.encode(control, forKey: .control)
        try container.encode(display, forKey: .display)
        try container.encode(playback, forKey: .playback)
        try container.encode(softwareUpdates, forKey: .softwareUpdates)
        try container.encode(sensors, forKey: .sensors)
        try container.encode(smartFeatures, forKey: .smartFeatures)
        try container.encode(remoteControl, forKey: .remoteControl)

        try super.encode(to: encoder)
    }
}
