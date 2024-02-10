//
//  Food.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

struct Food: Codable {
    var flavors: [String]? = nil
    var instructions: [String]? = nil
    var minerals: Minerals? = nil
    var nutrients: Nutrients? = nil
    var precautions: [String]? = nil
    var vitamins: Vitamins? = nil
}
