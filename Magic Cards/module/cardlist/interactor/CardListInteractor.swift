//
//  CardListInteractor.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardListInteractor: CardListServiceDelegate {
    // MARK: - Class properties

    weak var presenter: CardListInteractorToPresenterProtocol?

    // MARK: - Card List api delegates

    func onCardListPreExecute() {
        presenter?.showProgressIndicator(true)
    }

    func onCardListResponse(data: [CardVO]?) {
        if let cards = data {
            CardCoreDataRepository.saveCards(cards: cards)
        }
        presenter?.onCardListResponse(cards: data)
    }

    func onCardListFailure(error: ServiceError) {
        presenter?.onCardListFailure(error: error)
    }
}

// MARK: - CardListPresenterToInteractorProtocol

extension CardListInteractor: CardListPresenterToInteractorProtocol {
    func getMagicCards() {
        CardRepository.getCardList(listener: self)
    }
    
    func getCardsFromDB() -> [CardVO]? {
        return CardCoreDataRepository.retrieveCards()
    }
}
