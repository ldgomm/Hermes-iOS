//
//  Phone.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class ComputerFeature {
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
}

class Chip {
    var alias: String
    var cpu: CPU? = nil
    var gpu: GPU? = nil
  
    init(alias: String, cpu: CPU? = nil, gpu: GPU? = nil) {
        self.alias = alias
        self.cpu = cpu
        self.gpu = gpu
    }
}

class CPU {
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
}

class GPU {
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
}

class Calling {
    var videoCalling: [String]? = nil
    var audioCalling: [String]
  
    init(videoCalling: [String]? = nil, audioCalling: [String]) {
        self.videoCalling = videoCalling
        self.audioCalling = audioCalling
    }
}

class Connectivity {
    var ports: [String]
    var cellular: [String]? = nil
    var wireless: [String]? = nil
    
    init(ports: [String], cellular: [String]? = nil, wireless: [String]? = nil) {
        self.ports = ports
        self.cellular = cellular
        self.wireless = wireless
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
