//
//  Controls.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Control: Codable {
    var externalButtons: [String]? = nil
    
    private enum CodingKeys: String, CodingKey {
        case externalButtons
    }
    
    init(externalButtons: [String]? = nil) {
        self.externalButtons = externalButtons
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        externalButtons = try container.decodeIfPresent([String].self, forKey: .externalButtons)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(externalButtons, forKey: .externalButtons)
    }
}

