//
//  Playback.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Playback {
    var audioPlayback: [String]
    var videoPlayback: [String]? = nil
  
    init(audioPlayback: [String], videoPlayback: [String]? = nil) {
        self.audioPlayback = audioPlayback
        self.videoPlayback = videoPlayback
    }
}
