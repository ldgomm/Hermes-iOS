//
//  Code.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Codes {
    var store: String? = nil
    var bar: String? = nil
    var qr: String? = nil
    init(store: String? = nil, bar: String? = nil, qr: String? = nil) {
        self.store = store
        self.bar = bar
        self.qr = qr
    }
}
