//
//  Controls.swift
//  Hermes
//
//  Created by José Ruiz on 5/1/24.
//

import Foundation

class Control: Codable, Hashable {
    static func == (lhs: Control, rhs: Control) -> Bool {
        return lhs.externalButtons == rhs.externalButtons
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(externalButtons)
    }
    
    var externalButtons: [String]
    
    init(externalButtons: [String]) {
        self.externalButtons = externalButtons
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.externalButtons = try container.decode([String].self, forKey: .externalButtons)
    }
    
    enum CodingKeys: CodingKey {
        case externalButtons
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.externalButtons, forKey: .externalButtons)
    }
}
