//
//  Specifications.swift
//  Hermes
//
//  Created by José Ruiz on 29/1/24.
//

import Foundation

class Specifications {
    var models: [String]? = nil
    var colours: [String]? = nil
    var capacity: Int? = nil
    var finished: String? = nil
    var inBox: [String]? = nil
    var kind: String? = nil
    var size: Size? = nil
    
    init(models: [String]? = nil, colours: [String]? = nil, capacity: Int? = nil, finished: String? = nil, inBox: [String]? = nil, kind: String? = nil, size: Size? = nil) {
        self.models = models
        self.colours = colours
        self.capacity = capacity
        self.finished = finished
        self.inBox = inBox
        self.kind = kind
        self.size = size
    }
}
