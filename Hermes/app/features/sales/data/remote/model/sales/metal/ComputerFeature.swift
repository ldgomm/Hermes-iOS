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
    var cpu: CPU? = nil
    var connectivity: Connectivity? = nil
    var gpu: GPU? = nil
    var location: [String]? = nil
    var os: String? = nil
    var paymentMethod: String? = nil
    var ram: [String]? = nil
    var safety: [String]? = nil
    var simCard: [String]? = nil
    
    private enum CodingKeys: CodingKey {
        case accessibility, authentication, builtInApps, calling, carriers, chip, cpu, connectivity, gpu, location, os, paymentMethod, ram, safety, simCard
    }
    
    init(accessibility: [String]? = nil, authentication: [String]? = nil, builtInApps: [String]? = nil, calling: Calling? = nil, carriers: [String]? = nil, chip: Chip? = nil, cpu: CPU? = nil, connectivity: Connectivity? = nil, gpu: GPU? = nil, location: [String]? = nil, os: String? = nil, paymentMethod: String? = nil, ram: [String]? = nil, safety: [String]? = nil, simCard: [String]? = nil) {
        self.accessibility = accessibility
        self.authentication = authentication
        self.builtInApps = builtInApps
        self.calling = calling
        self.carriers = carriers
        self.chip = chip
        self.cpu = cpu
        self.connectivity = connectivity
        self.gpu = gpu
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
        cpu = try container.decodeIfPresent(CPU.self, forKey: .cpu)
        connectivity = try container.decodeIfPresent(Connectivity.self, forKey: .connectivity)
        gpu = try container.decodeIfPresent(GPU.self, forKey: .gpu)
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
        try container.encodeIfPresent(cpu, forKey: .cpu)
        try container.encodeIfPresent(connectivity, forKey: .connectivity)
        try container.encodeIfPresent(gpu, forKey: .gpu)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(os, forKey: .os)
        try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
        try container.encodeIfPresent(ram, forKey: .ram)
        try container.encodeIfPresent(safety, forKey: .safety)
        try container.encodeIfPresent(simCard, forKey: .simCard)
    }
}
