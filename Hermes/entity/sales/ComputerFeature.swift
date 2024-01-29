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
    var safety: [String]? = nil
    var simCard: [String]? = nil
}

class Chip {
   
    var alias: String
    var cpu: CPU? = nil
    var gpu: GPU? = nil
  
}

class CPU {
    var alias: String
    var cores: Int? = nil
    var architecture: String? = nil
    var technology: String? = nil
}

class GPU {
    var alias: String
    var cores: Int? = nil
    var displayConnectors: [String]? = nil
    var compatibilityWithSpecificTechnologies: [String]? = nil
    var coolingDesign: String? = nil
    var supportForMultiMonitor: Bool? = nil
}

class Calling {
    
    var videoCalling: [String]
    var audioCalling: [String]
  
}

class Connectivity {

    var ports: [String]
    var cellular: [String]
    var wireless: [String]
    
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
