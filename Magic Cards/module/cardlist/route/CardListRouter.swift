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
        let cardDetailModule = CardDetailRouter.createModule(with: card)
        CardListRouter.mNavigationController?.pushViewController(cardDetailModule, animated: true)
    }

    func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Accept", style: .cancel, handler: nil))
        CardListRouter.mNavigationController?.present(alert, animated: true, completion: nil)
    }
}
