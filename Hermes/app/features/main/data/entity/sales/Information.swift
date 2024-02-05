//
//  Overview.swift
//  Hermes
//
//  Created by José Ruiz on 6/1/24.
//

import Foundation

class Information {
    var title: String
    var subtitle: String
    var body: String
    var photo: Photo
    
    init(title: String, subtitle: String, body: String, photo: Photo) {
        self.title = title
        self.subtitle = subtitle
        self.body = body
        self.photo = photo
    }
}
