//
//  Images.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Images {
    var product: Photos
    var box: Photos? = nil
}

class Photos {
    var front: String
    var back: String? = nil
    var left: String? = nil
    var right: String? = nil
    var up: String? = nil
    var down: String? = nil
}

