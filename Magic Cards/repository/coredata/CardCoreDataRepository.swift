//
//  CardCoreDataRepository.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardCoreDataRepository {
    private static let cardDao = CardDao()

    static func saveCards(cards: [CardVO]) {
        for card in cards {
            cardDao.create(cardVO: card)
        }
    }

    static func retrieveCards() -> [CardVO]? {
        var result = [CardVO]()
        if let cardEntities = cardDao.findAll() {
            result = cardEntities.map({ (entity) -> CardVO in
                CardVO(name: entity.name, imageUrl: entity.image, text: entity.text, rarity: entity.rarity)
            })
        }
        return result
    }
    
    static func deleteAll() {
        self.cardDao.deleteAll()
    }
    
}
