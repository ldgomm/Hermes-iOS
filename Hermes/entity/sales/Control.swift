//
//  Controls.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Control {
    var externalButtons: [String]? = nil
   
    init(externalButtons: [String]? = nil) {
        self.externalButtons = externalButtons
    }
}
