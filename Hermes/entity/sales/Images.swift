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
    
    init(product: Photos, box: Photos? = nil) {
        self.product = product
        self.box = box
    }
}

class Photos {
    var front: String
    var back: String? = nil
    var left: String? = nil
    var right: String? = nil
    var up: String? = nil
    var down: String? = nil
    
    init(front: String, back: String? = nil, left: String? = nil, right: String? = nil, up: String? = nil, down: String? = nil) {
        self.front = front
        self.back = back
        self.left = left
        self.right = right
        self.up = up
        self.down = down
    }
}

