//
//  CardDetailRouter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class CardDetailRouter {
    // MARK: - Common functions

    class func createModule(with card: CardVO) -> UIViewController {
        let storyboard = UIStoryboard(name: "CardDetail", bundle: Bundle.main)
        if let view = storyboard.instantiateViewController(withIdentifier: "CardDetailID") as? CardDetailViewController {
            let presenter: CardDetailViewToPresenterProtocol & CardDetailInteractorToPresenterProtocol = CardDetailPresenter()
            let interactor: CardDetailPresenterToInteractorProtocol = CardDetailInteractor()
            let router: CardDetailPresenterToRouterProtocol = CardDetailRouter()

            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            // Set custom params to presenter
            presenter.mCard = card
            interactor.presenter = presenter

            return view
        }

        return UIViewController()
    }
}

// MARK: - CardDetailPresenterToRouterProtocol

extension CardDetailRouter: CardDetailPresenterToRouterProtocol {
}
