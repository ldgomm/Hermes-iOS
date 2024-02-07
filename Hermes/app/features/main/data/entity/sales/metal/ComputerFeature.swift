//
//  Phone.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class ComputerFeature: Codable {

    var accessibility: [String]? = nil
    var authentication: [String]? = nil
    var builtInApps: [String]? = nil
    var calling: Calling? = nil
    var carriers: [String]? = nil
    var chip: Chip? = nil
    var connectivity: Connectivity? = nil
    var location: [String]? = nil
    var os: String? = nil
    var paymentMethod: String? = nil
    var ram: [String]? = nil
    var safety: [String]? = nil
    var simCard: [String]? = nil
    
    private enum CodingKeys: String, CodingKey {
        case accessibility, authentication, builtInApps, calling, carriers, chip, connectivity, location, os, paymentMethod, ram, safety, simCard
    }
    
    init(accessibility: [String]? = nil, authentication: [String]? = nil, builtInApps: [String]? = nil, calling: Calling? = nil, carriers: [String]? = nil, chip: Chip? = nil, connectivity: Connectivity? = nil, location: [String]? = nil, os: String? = nil, paymentMethod: String? = nil, ram: [String]? = nil, safety: [String]? = nil, simCard: [String]? = nil) {
        self.accessibility = accessibility
        self.authentication = authentication
        self.builtInApps = builtInApps
        self.calling = calling
        self.carriers = carriers
        self.chip = chip
        self.connectivity = connectivity
        self.location = location
        self.os = os
        self.paymentMethod = paymentMethod
        self.ram = ram
        self.safety = safety
        self.simCard = simCard
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        accessibility = try container.decodeIfPresent([String].self, forKey: .accessibility)
        authentication = try container.decodeIfPresent([String].self, forKey: .authentication)
        builtInApps = try container.decodeIfPresent([String].self, forKey: .builtInApps)
        calling = try container.decodeIfPresent(Calling.self, forKey: .calling)
        carriers = try container.decodeIfPresent([String].self, forKey: .carriers)
        chip = try container.decodeIfPresent(Chip.self, forKey: .chip)
        connectivity = try container.decodeIfPresent(Connectivity.self, forKey: .connectivity)
        location = try container.decodeIfPresent([String].self, forKey: .location)
        os = try container.decodeIfPresent(String.self, forKey: .os)
        paymentMethod = try container.decodeIfPresent(String.self, forKey: .paymentMethod)
        ram = try container.decodeIfPresent([String].self, forKey: .ram)
        safety = try container.decodeIfPresent([String].self, forKey: .safety)
        simCard = try container.decodeIfPresent([String].self, forKey: .simCard)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accessibility, forKey: .accessibility)
        try container.encodeIfPresent(authentication, forKey: .authentication)
        try container.encodeIfPresent(builtInApps, forKey: .builtInApps)
        try container.encodeIfPresent(calling, forKey: .calling)
        try container.encodeIfPresent(carriers, forKey: .carriers)
        try container.encodeIfPresent(chip, forKey: .chip)
        try container.encodeIfPresent(connectivity, forKey: .connectivity)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(os, forKey: .os)
        try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        try container.encodeIfPresent(ram, forKey: .ram)
        try container.encodeIfPresent(safety, forKey: .safety)
        try container.encodeIfPresent(simCard, forKey: .simCard)
    }
}


class Chip: Codable {
    var alias: String
    var cpu: CPU? = nil
    var gpu: GPU? = nil
  
    init(alias: String, cpu: CPU? = nil, gpu: GPU? = nil) {
        self.alias = alias
        self.cpu = cpu
        self.gpu = gpu
    }
    
    private enum CodingKeys: String, CodingKey {
        case alias, cpu, gpu
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        cpu = try container.decodeIfPresent(CPU.self, forKey: .cpu)
        gpu = try container.decodeIfPresent(GPU.self, forKey: .gpu)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encodeIfPresent(cpu, forKey: .cpu)
        try container.encodeIfPresent(gpu, forKey: .gpu)
    }
}


class CPU: Codable {
    var alias: String
    var cores: Int? = nil
    var architecture: String? = nil
    var technology: String? = nil
    
    init(alias: String, cores: Int? = nil, architecture: String? = nil, technology: String? = nil) {
        self.alias = alias
        self.cores = cores
        self.architecture = architecture
        self.technology = technology
    }
    
    private enum CodingKeys: String, CodingKey {
        case alias, cores, architecture, technology
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        cores = try container.decodeIfPresent(Int.self, forKey: .cores)
        architecture = try container.decodeIfPresent(String.self, forKey: .architecture)
        technology = try container.decodeIfPresent(String.self, forKey: .technology)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encodeIfPresent(cores, forKey: .cores)
        try container.encodeIfPresent(architecture, forKey: .architecture)
        try container.encodeIfPresent(technology, forKey: .technology)
    }
}


class GPU: Codable {
    var alias: String
    var cores: Int? = nil
    var displayConnectors: [String]? = nil
    var compatibilityWithSpecificTechnologies: [String]? = nil
    var coolingDesign: String? = nil
    var supportForMultiMonitor: Bool? = nil
    
    init(alias: String, cores: Int? = nil, displayConnectors: [String]? = nil, compatibilityWithSpecificTechnologies: [String]? = nil, coolingDesign: String? = nil, supportForMultiMonitor: Bool? = nil) {
        self.alias = alias
        self.cores = cores
        self.displayConnectors = displayConnectors
        self.compatibilityWithSpecificTechnologies = compatibilityWithSpecificTechnologies
        self.coolingDesign = coolingDesign
        self.supportForMultiMonitor = supportForMultiMonitor
    }
    
    private enum CodingKeys: String, CodingKey {
        case alias, cores, displayConnectors, compatibilityWithSpecificTechnologies, coolingDesign, supportForMultiMonitor
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        cores = try container.decodeIfPresent(Int.self, forKey: .cores)
        displayConnectors = try container.decodeIfPresent([String].self, forKey: .displayConnectors)
        compatibilityWithSpecificTechnologies = try container.decodeIfPresent([String].self, forKey: .compatibilityWithSpecificTechnologies)
        coolingDesign = try container.decodeIfPresent(String.self, forKey: .coolingDesign)
        supportForMultiMonitor = try container.decodeIfPresent(Bool.self, forKey: .supportForMultiMonitor)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encodeIfPresent(cores, forKey: .cores)
        try container.encodeIfPresent(displayConnectors, forKey: .displayConnectors)
        try container.encodeIfPresent(compatibilityWithSpecificTechnologies, forKey: .compatibilityWithSpecificTechnologies)
        try container.encodeIfPresent(coolingDesign, forKey: .coolingDesign)
        try container.encodeIfPresent(supportForMultiMonitor, forKey: .supportForMultiMonitor)
    }
}


class Calling: Codable {
    var videoCalling: [String]? = nil
    var audioCalling: [String]
  
    init(videoCalling: [String]? = nil, audioCalling: [String]) {
        self.videoCalling = videoCalling
        self.audioCalling = audioCalling
    }
    
    private enum CodingKeys: String, CodingKey {
        case videoCalling, audioCalling
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        videoCalling = try container.decodeIfPresent([String].self, forKey: .videoCalling)
        audioCalling = try container.decode([String].self, forKey: .audioCalling)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(videoCalling, forKey: .videoCalling)
        try container.encode(audioCalling, forKey: .audioCalling)
    }
}


class Connectivity: Codable {
    var ports: [String]
    var cellular: [String]? = nil
    var wireless: [String]? = nil
    
    init(ports: [String], cellular: [String]? = nil, wireless: [String]? = nil) {
        self.ports = ports
        self.cellular = cellular
        self.wireless = wireless
    }
    
    private enum CodingKeys: String, CodingKey {
        case ports, cellular, wireless
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        ports = try container.decode([String].self, forKey: .ports)
        cellular = try container.decodeIfPresent([String].self, forKey: .cellular)
        wireless = try container.decodeIfPresent([String].self, forKey: .wireless)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(ports, forKey: .ports)
        try container.encodeIfPresent(cellular, forKey: .cellular)
        try container.encodeIfPresent(wireless, forKey: .wireless)
    }
}





























extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        guard let data = try? Data (contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        guard let loaded = try? JSONDecoder().decode (T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        return loaded
    }
}
