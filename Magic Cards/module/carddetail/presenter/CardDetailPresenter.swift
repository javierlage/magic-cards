//
//  CardDetailPresenter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardDetailPresenter {
    // MARK: - Class properties

    weak var view: CardDetailPresenterToViewProtocol?
    var interactor: CardDetailPresenterToInteractorProtocol?
    var router: CardDetailPresenterToRouterProtocol?

    var mCard: CardVO!
}

// MARK: - CardDetailViewToPresenterProtocol

extension CardDetailPresenter: CardDetailViewToPresenterProtocol {
    func getCardOriginalText() -> String {
        return mCard.originalText ?? ""
    }

    func getCardName() -> String {
        return mCard.name ?? ""
    }

    func getCardImage() -> String? {
        return mCard.imageUrl
    }
}

// MARK: - CardDetailInteractorToPresenterProtocol

extension CardDetailPresenter: CardDetailInteractorToPresenterProtocol {
}
