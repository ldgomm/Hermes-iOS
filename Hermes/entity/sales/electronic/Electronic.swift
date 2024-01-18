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
        lhs.smartFeatures == rhs.smartFeatures &&
        lhs.storage == rhs.storage &&
        lhs.chip == rhs.chip &&
        lhs.memory == rhs.memory &&
        lhs.model == rhs.model &&
        lhs.inBox == rhs.inBox
        
    }
    
    override func hash(into hasher: inout Hasher) {
        super.hash(into: &hasher)
        hasher.combine(brand)
        hasher.combine(connectivity)
        hasher.combine(finish)
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
        hasher.combine(chip)
        hasher.combine(storage)
        hasher.combine(memory)
        hasher.combine(model)
        hasher.combine(inBox)
    }
    
    var brand: String
    var connectivity: Connectivity?
    var finish: String
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
    var chip: Chip?
    var storage: Storage?
    var memory: Memory?
    var model: String
    var inBox: [String]
    
    private enum CodingKeys: String, CodingKey {
        case brand
        case connectivity
        case finish
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
        case chip
        case storage
        case memory
        case model
        case inBox
    }
    
    init(id: String, name: String, overview: [Information], price: Price, origin: String, offer: Offer, images: Images, stock: Int, colours: [String]? = nil, keywords: [String], category: String, subcategory: String, brand: String, connectivity: Connectivity, finish: String, weight: Int, size: Size, power: Power, camera:Camera? = nil, control: Control, display: Display? = nil, playback: Playback? = nil, softwareUpdates: Bool? = nil, sensors: [String]? = nil, smartFeatures: SmartFeatures? = nil, remoteControl: RemoteControl? = nil, chip: Chip? = nil, storage: Storage? = nil, memory: Memory? = nil, model: String, inBox: [String]) {
        self.brand = brand
        self.connectivity = connectivity
        self.finish = finish
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
        self.chip = chip
        self.storage = storage
        self.memory = memory
        self.model = model
        self.inBox = inBox
        
        super.init(id: id, name: name, overview: overview, price: price, origin: origin, offer: offer, images: images, stock: stock, colours: colours, keywords: keywords, category: category, subcategory: subcategory)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        brand = try container.decode(String.self, forKey: .brand)
        connectivity = try container.decodeIfPresent(Connectivity.self, forKey: .connectivity)
        finish = try container.decode(String.self, forKey: .finish)
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
        chip = try container.decodeIfPresent(Chip.self, forKey: .chip)
        storage = try container.decodeIfPresent(Storage.self, forKey: .storage)
        memory = try container.decodeIfPresent(Memory.self, forKey: .memory)
        model = try container.decode(String.self, forKey: .model)
        inBox = try container.decode([String].self, forKey: .inBox)
        
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(brand, forKey: .brand)
        try container.encodeIfPresent(connectivity, forKey: .connectivity)
        try container.encode(finish, forKey: .finish)
        try container.encode(weight, forKey: .weight)
        try container.encode(size, forKey: .size)
        try container.encode(power, forKey: .power)
        try container.encodeIfPresent(camera, forKey: .camera)
        try container.encode(control, forKey: .control)
        try container.encodeIfPresent(display, forKey: .display)
        try container.encodeIfPresent(playback, forKey: .playback)
        try container.encodeIfPresent(softwareUpdates, forKey: .softwareUpdates)
        try container.encodeIfPresent(sensors, forKey: .sensors)
        try container.encodeIfPresent(smartFeatures, forKey: .smartFeatures)
        try container.encodeIfPresent(remoteControl, forKey: .remoteControl)
        try container.encodeIfPresent(chip, forKey: .chip)
        try container.encodeIfPresent(storage, forKey: .storage)
        try container.encodeIfPresent(memory, forKey: .memory)
        try container.encode(model, forKey: .model)
        try container.encode(inBox, forKey: .inBox)
        
        try super.encode(to: encoder)
    }
}
