//
//  CardListRouter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class CardListRouter: BaseRouter {
    // MARK: - Common functions

    class func createModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "CardList", bundle: Bundle.main)
        if let view = storyboard.instantiateViewController(withIdentifier: "CardListID") as? CardListViewController {
            let presenter: CardListViewToPresenterProtocol & CardListInteractorToPresenterProtocol = CardListPresenter()
            let interactor: CardListPresenterToInteractorProtocol = CardListInteractor()
            let router: CardListPresenterToRouterProtocol = CardListRouter()

            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter

            return view
        }

        return UIViewController()
    }
}

// MARK: - CardListPresenterToRouterProtocol

extension CardListRouter: CardListPresenterToRouterProtocol {
    func navigateToCardDetails(card: CardVO) {
        let cardDetailModule = CardDetailRouter.createModule(card: card)
        CardListRouter.mNavigationController?.pushViewController(cardDetailModule, animated: true)
    }
    
}
