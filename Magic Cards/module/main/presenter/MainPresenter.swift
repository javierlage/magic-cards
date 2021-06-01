//
//  MainPresenter.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class MainPresenter {
    // MARK: - Class properties

    weak var view: MainPresenterToViewProtocol?
    var interactor: MainPresenterToInteractorProtocol?
    var router: MainPresenterToRouterProtocol?
}

// MARK: - MainViewToPresenterProtocol

extension MainPresenter: MainViewToPresenterProtocol {
    func onStartButtonClicked() {
        router?.navigateToCardListModule()
    }
}

// MARK: - MainInteractorToPresenterProtocol

extension MainPresenter: MainInteractorToPresenterProtocol {
}
