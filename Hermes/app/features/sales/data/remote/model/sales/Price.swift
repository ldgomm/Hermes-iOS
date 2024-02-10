//
//  Price.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

struct Price: Codable {
    var cash: [String: Double]
    var creditCard: CreditCard? = nil
    var offer: Offer
}
