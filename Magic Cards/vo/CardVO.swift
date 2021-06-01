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
    var originalText: String?
    var rarity: String?
}
