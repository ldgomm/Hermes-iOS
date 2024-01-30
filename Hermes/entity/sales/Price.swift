//
//  Price.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Price  {
    var cash: Double
    var affiliate: Double? = nil
    var creditCard: CreditCard? = nil 
    
    init(cash: Double, affiliate: Double? = nil, creditCard: CreditCard? = nil) {
        self.cash = cash
        self.affiliate = affiliate
        self.creditCard = creditCard
    }
}

class CreditCard {
    var card: Double
    var withinterest: Int? = nil
    var withoutinterest: Int? = nil
    
    init(card: Double, withinterest: Int? = nil, withoutinterest: Int? = nil) {
        self.card = card
        self.withinterest = withinterest
        self.withoutinterest = withoutinterest
    }
}
