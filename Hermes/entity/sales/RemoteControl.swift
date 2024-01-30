//
//  RemoteControl.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class RemoteControl {
    var type: [String]
    var voiceControl: Bool? = nil

    init(type: [String], voiceControl: Bool? = nil) {
        self.type = type
        self.voiceControl = voiceControl
    }
}
