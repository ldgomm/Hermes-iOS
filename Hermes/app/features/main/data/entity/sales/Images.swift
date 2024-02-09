//
//  Images.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

struct Images: Codable {
    var product: [Photo]
    var box: [Photo]? = nil
}
