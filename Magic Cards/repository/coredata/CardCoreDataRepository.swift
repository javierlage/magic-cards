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
                let card = CardVO()
                card.name = entity.name
                card.originalText = entity.text
                card.imageUrl = entity.image
                card.rarity = entity.rarity
                return card
            })
        }
        return result
    }
}
