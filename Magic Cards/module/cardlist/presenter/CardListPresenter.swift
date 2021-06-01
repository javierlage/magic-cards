//
//  CardListPresenter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardListPresenter {
    // MARK: - Class properties

    weak var view: CardListPresenterToViewProtocol?
    var interactor: CardListPresenterToInteractorProtocol?
    var router: CardListPresenterToRouterProtocol?

    private var mCardList = [CardVO]()

    private func notifyUI() {
        view?.onCardsLoaded()
        view?.showActivityIndicator(false)
    }
}

// MARK: - CardListViewToPresenterProtocol

extension CardListPresenter: CardListViewToPresenterProtocol {
    func initUI() {
        // Find cards stored in db, if there isn't any, then find them through api
        mCardList = interactor?.getCardsFromDB() ?? [CardVO]()
        if mCardList.count == 0 {
            interactor?.getMagicCards()
        } else {
            notifyUI()
        }
    }

    func getCardAt(index: Int) -> CardVO {
        return mCardList[index]
    }

    func getCardsCount() -> Int {
        return mCardList.count
    }

    func onCardClickedAt(index: Int) {
        let selectedCard = mCardList[index]
        router?.navigateToCardDetails(card: selectedCard)
    }
}

// MARK: - CardListInteractorToPresenterProtocol

extension CardListPresenter: CardListInteractorToPresenterProtocol {
    func showProgressIndicator(_ isVisible: Bool) {
        view?.showActivityIndicator(isVisible)
    }

    func onCardListResponse(cards: [CardVO]?) {
        if let items = cards {
            mCardList = items
        }
        notifyUI()
    }

    func onCardListFailure(error: ServiceError) {
        view?.showActivityIndicator(false)
        view?.showErrorAlert(message: error.message)
    }
}
