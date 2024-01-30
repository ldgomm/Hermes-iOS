//
//  Storage.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Storage {
    var internalCapacity: [Int]
    var hasExternalCapacity: Bool? = nil
    var externalCapacity: [Int]? = nil
    
    init(internalCapacity: [Int], hasExternalCapacity: Bool? = nil, externalCapacity: [Int]? = nil) {
        self.internalCapacity = internalCapacity
        self.hasExternalCapacity = hasExternalCapacity
        self.externalCapacity = externalCapacity
    }
}
