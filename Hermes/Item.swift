//
//  Item.swift
//  Hermes
//
//  Created by José Ruiz on 3/1/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
