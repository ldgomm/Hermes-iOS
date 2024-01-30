//
//  Camera.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Camera {
   
    var system: String
    var features: [String]
    var extraFeatures: [String]? = nil
    var videoRecording: [String]? = nil
   
    init(system: String, features: [String], extraFeatures: [String]? = nil, videoRecording: [String]? = nil) {
        self.system = system
        self.features = features
        self.extraFeatures = extraFeatures
        self.videoRecording = videoRecording
    }
}
