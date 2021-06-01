//
//  MainInteractor.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class MainInteractor {
    // MARK: - Class properties

    weak var presenter: MainInteractorToPresenterProtocol?
}

// MARK: - MainPresenterToInteractorProtocol

extension MainInteractor: MainPresenterToInteractorProtocol {
}
