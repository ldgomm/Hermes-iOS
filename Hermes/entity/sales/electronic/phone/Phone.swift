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
        lhs.accessibility == rhs.accessibility &&
        lhs.simCard == rhs.simCard &&
        lhs.builtInApps == rhs.builtInApps &&
        lhs.inBox == rhs.inBox
    }
    
    override func hash(into hasher: inout Hasher) {
        hasher.combine(model)
        hasher.combine(dataStorage)
        hasher.combine(memory)
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
        hasher.combine(accessibility)
        hasher.combine(simCard)
        hasher.combine(builtInApps)
        hasher.combine(inBox)
    }
    
    var model: String
    var dataStorage: [String]
    var memory: String
    var os: String
    var chip: String
    var authentication: [String]
    var paymentMethod: String
    var safety: [String]
    var carriers: [String]
    var location: [String]
    var calling: Calling
    var accessibility: [String]
    var simCard: [String]
    var builtInApps: [String]
    var inBox: [String]
    
    private enum CodingKeys: String, CodingKey {
        case model
        case dataStorage
        case memory
        case os
        case chip
        case authentication
        case paymentMethod
        case safety
        case carriers
        case location
        case calling
        case accessibility
        case simCard
        case builtInApps
        case inBox
    }
    
    init(id: String, name: String, price: Double, origin: String, offer: Offer, images: Images, keywords: [String],
         brand: String, connectivity: Connectivity, finish: String, capacity: Int?, weight: Int, size: Size, power: Power, camera:Camera?, control: Control, display: Display?, playback: Playback?, softwareUpdates: Bool?, sensors: [String]?, smartFeatures: SmartFeatures?, remoteControl: RemoteControl?, model: String, dataStorage: [String], memory: String, os: String, chip: String, authentication: [String], paymentMethod: String, safety: [String], carriers: [String], location: [String], calling: Calling, accessibility: [String], simCard: [String], builtInApps: [String], inBox: [String]) {
        self.model = model
        self.dataStorage = dataStorage
        self.memory = memory
        self.os = os
        self.chip = chip
        self.authentication = authentication
        self.paymentMethod = paymentMethod
        self.safety = safety
        self.carriers = carriers
        self.location = location
        self.calling = calling
        self.accessibility = accessibility
        self.simCard = simCard
        self.builtInApps = builtInApps
        self.inBox = inBox
        
        super.init(id: id, name: name, price: price, origin: origin, offer: offer, images: images, keywords: keywords, brand: brand, connectivity: connectivity, finish: finish, capacity: capacity, weight: weight, size: size, power: power, camera: camera, control: control, display: display, playback: playback, softwareUpdates: softwareUpdates, sensors: sensors, smartFeatures: smartFeatures, remoteControl: remoteControl)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        model = try container.decode(String.self, forKey: .model)
        dataStorage = try container.decode([String].self, forKey: .dataStorage)
        memory = try container.decode(String.self, forKey: .memory)
        os = try container.decode(String.self, forKey: .os)
        chip = try container.decode(String.self, forKey: .chip)
        authentication = try container.decode([String].self, forKey: .authentication)
        paymentMethod = try container.decode(String.self, forKey: .paymentMethod)
        safety = try container.decode([String].self, forKey: .safety)
        carriers = try container.decode([String].self, forKey: .carriers)
        location = try container.decode([String].self, forKey: .location)
        calling = try container.decode(Calling.self, forKey: .calling)
        accessibility = try container.decode([String].self, forKey: .accessibility)
        simCard = try container.decode([String].self, forKey: .simCard)
        builtInApps = try container.decode([String].self, forKey: .builtInApps)
        inBox = try container.decode([String].self, forKey: .inBox)
        
        try super.init(from: decoder)
    }
    
    override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(model, forKey: .model)
        try container.encode(dataStorage, forKey: .dataStorage)
        try container.encode(memory, forKey: .memory)
        try container.encode(os, forKey: .os)
        try container.encode(chip, forKey: .chip)
        try container.encode(authentication, forKey: .authentication)
        try container.encode(paymentMethod, forKey: .paymentMethod)
        try container.encode(safety, forKey: .safety)
        try container.encode(carriers, forKey: .carriers)
        try container.encode(location, forKey: .location)
        try container.encode(calling, forKey: .calling)
        try container.encode(accessibility, forKey: .accessibility)
        try container.encode(simCard, forKey: .simCard)
        try container.encode(builtInApps, forKey: .builtInApps)
        try container.encode(inBox, forKey: .inBox)
        
        try super.encode(to: encoder)
    }
}

let phone: Phone = .init(
    id: "12345",
    name: "SmartPhone Pro",
    price: 899.99,
    origin: "USA",
    offer: Offer(isInOffer: true, percentage: 15),
    images: Images(
        main: MainImages(
            front: "front_image_url.jpg",
            back: "back_image_url.jpg",
            left: "left_image_url.jpg",
            right: "right_image_url.jpg",
            up: "up_image_url.jpg",
            down: "down_image_url.jpg"
        ),
        box: BoxImages(
            front: "box_front_image_url.jpg",
            back: "box_back_image_url.jpg"
        )
    ),
    keywords: ["Smartphone", "Flagship", "iOS", "5G"],
    brand: "TechCo",
    connectivity: Connectivity(
        ports: ["USB-C"],
        cellular: ["5G", "LTE"],
        wireless: ["Wi-Fi 6", "Bluetooth 5.2"]
    ),
    finish: "Matte Black",
    capacity: 128,
    weight: 165,
    size: Size(height: 6.2, width: 3.0, deep: 0.35),
    power: Power(
        isRechargeable: true,
        charging: Charging(chargingModes: ["Fast Charging", "Wireless Charging"]),
        battery: Battery(
            hasBattery: true,
            isFastCharging: true,
            approximateDuration: 12,
            capacity: 4000
        )
    ),
    camera: Camera(
        system: "Triple Camera",
        features: ["Night Mode", "Portrait Mode"],
        extraFeatures: ["Wide Angle", "Telephoto"],
        videoRecording: ["4K", "1080p"]
    ),
    control: Control(externalButtons: ["Volume Up", "Volume Down"]),
    display: Display(
        technology: "Super Retina XDR",
        diagonal: "6.7 inches",
        updateFrequency: 120,
        glow: 600,
        isTouch: true,
        resolution: "2778x1284",
        features: ["HDR10", "Dolby Vision"],
        extraFeatures: ["ProMotion"]
    ),
    playback: Playback(
        audioPlayback: ["AAC", "Dolby Atmos"],
        videoPlayback: ["H.264", "H.265"]
    ),
    softwareUpdates: true,
    sensors: ["Face ID", "Accelerometer", "Gyroscope"],
    smartFeatures: SmartFeatures(aiAssistant: "", extraFeatures: [""]),
    remoteControl: RemoteControl(type: "", voiceControl: true),
    model: "Pro 2023",
    dataStorage: ["UFS 3.1"],
    memory: "8GB RAM",
    os: "iOS 15",
    chip: "A16 Bionic",
    authentication: ["Face ID", "Fingerprint Sensor"],
    paymentMethod: "Apple Pay",
    safety: ["Face Recognition", "Touch ID"],
    carriers: ["Verizon", "AT&T"],
    location: ["GPS", "Galileo"],
    calling: Calling(
        videoCalling: ["FaceTime", "Zoom"],
        audioCalling: ["Phone", "WhatsApp"]
    ),
    accessibility: ["VoiceOver", "Magnifier"],
    simCard: ["eSIM", "Nano SIM"],
    builtInApps: ["Messages", "Photos"],
    inBox: ["Charging Cable", "EarPods"]
)

