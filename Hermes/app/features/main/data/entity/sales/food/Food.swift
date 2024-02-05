//
//  Food.swift
//  Hermes
//
//  Created by José Ruiz on 30/1/24.
//

import Foundation

class Food: Product {
    
    var flavors: [String]? = nil
    var instructions: [String]? = nil
    var precautions: [String]? = nil
    var nutrientData: NutrientData? = nil
    var vitamins: Vitamins? = nil
    var minerals: Minerals? = nil
    
    init(id: String, codes: Codes? = nil, images: Images, name: String, overview: [Information], specifications: Specifications? = nil, offer: Offer, origin: String, price: Price, stock: Int, category: Category, keywords: [String], warranty: Warranty, flavors: [String]? = nil, instructions: [String]? = nil, precautions: [String]? = nil, nutrientData: NutrientData? = nil, vitamins: Vitamins? = nil, minerals: Minerals? = nil) {
        self.flavors = flavors
        self.instructions = instructions
        self.precautions = precautions
        self.nutrientData = nutrientData
        self.vitamins = vitamins
        self.minerals = minerals
        
        super.init(id: id, codes: codes, images: images, name: name, overview: overview, specifications: specifications, offer: offer, origin: origin, price: price, stock: stock, category: category, keywords: keywords, warranty: warranty)
    }
}






