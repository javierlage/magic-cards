//
//  CardVO.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardVO: Decodable {
    var name: String?
    var imageUrl: String?
    var text: String?
    var rarity: String?

    init(name: String, imageUrl: String, text: String, rarity: String) {
        self.name = name
        self.imageUrl = imageUrl
        self.text = text
        self.rarity = rarity
    }
}
