//
//  CardRepository.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardRepository {
    static func getCardList(listener: CardListServiceDelegate) {
        CardService.getCardList(listener: listener)
    }
}
