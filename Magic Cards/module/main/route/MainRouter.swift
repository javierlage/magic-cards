//
//  MainRouter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import UIKit

class MainRouter: BaseRouter {
    // MARK: - Common functions

    class func createModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let navigationController = storyboard.instantiateViewController(withIdentifier: "NavigationID") as! UINavigationController
        
        if let view = navigationController.children.first as? MainViewController {
            let presenter: MainViewToPresenterProtocol & MainInteractorToPresenterProtocol = MainPresenter()
            let interactor: MainPresenterToInteractorProtocol = MainInteractor()
            let router: MainPresenterToRouterProtocol = MainRouter()

            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            return navigationController
        }
        return UIViewController()
    }
}

// MARK: - MainPresenterToRouterProtocol

extension MainRouter: MainPresenterToRouterProtocol {
    func navigateToCardListModule() {
        let cardListModule = CardListRouter.createModule()
        MainRouter.mNavigationController?.pushViewController(cardListModule, animated: true)
    }
}
