//
//  Console.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Console: Electronic {
    
    static func == (lhs: Console, rhs: Console) -> Bool {
        return lhs.coolingSystem == rhs.coolingSystem &&
        lhs.opticalDrive == rhs.opticalDrive &&
        lhs.backwardCompatibility == rhs.backwardCompatibility &&
        lhs.firmware == rhs.firmware
    }
    
    override func hash(into hasher: inout Hasher) {
        hasher.combine(coolingSystem)
        hasher.combine(opticalDrive)
        hasher.combine(backwardCompatibility)
        hasher.combine(firmware)
    }
    
    var coolingSystem: String
    var opticalDrive: Bool
    var backwardCompatibility: [String]
    var firmware: Bool?
    
    private enum CodingKeys: String, CodingKey {
        case coolingSystem
        case opticalDrive
        case backwardCompatibility
        case firmware
    }
    
    init(id: String, name: String, overviews: [Overview], price: Price, origin: String, offer: Offer, images: Images, stock: Int, colours: [String]? = nil, keywords: [String], category: String, subcategory: String, brand: String, connectivity: Connectivity, finish: String, weight: Int, size: Size, power: Power, camera: Camera? = nil, control: Control, display: Display? = nil, playback: Playback? = nil, softwareUpdates: Bool? = nil, sensors: [String]? = nil, smartFeatures: SmartFeatures? = nil, remoteControl: RemoteControl? = nil, chip: Chip? = nil, storage: Storage? = nil, memory: Memory? = nil, model: String, inBox: [String], coolingSystem: String, opticalDrive: Bool, backwardCompatibility: [String],firmware: Bool?) {

        self.coolingSystem = coolingSystem
        self.opticalDrive = opticalDrive
        self.backwardCompatibility = backwardCompatibility
        self.firmware = firmware
        
        super.init(id: id, name: name, overviews: overviews, price: price, origin: origin, offer: offer, images: images, stock: stock, keywords: keywords, category: category, subcategory: subcategory, brand: brand, connectivity: connectivity, finish: finish, weight: weight, size: size, power: power, control: control, model: model, inBox: inBox)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.coolingSystem = try container.decode(String.self, forKey: .coolingSystem)
        self.opticalDrive = try container.decode(Bool.self, forKey: .opticalDrive)
        self.backwardCompatibility = try container.decode([String].self, forKey: .backwardCompatibility)
        self.firmware = try container.decodeIfPresent(Bool.self, forKey: .firmware)
        
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.coolingSystem, forKey: .coolingSystem)
        try container.encode(self.opticalDrive, forKey: .opticalDrive)
        try container.encode(self.backwardCompatibility, forKey: .backwardCompatibility)
        try container.encodeIfPresent(self.firmware, forKey: .firmware)
    }
}
