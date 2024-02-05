//
//  Images.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Images {
    var product: Photo
    var box: Photo? = nil
    
    init(product: Photo, box: Photo? = nil) {
        self.product = product
        self.box = box
    }
}

class Photo {
    var url: String? = nil
    
    init(url: String? = nil) {
        self.url = url
    }
}

