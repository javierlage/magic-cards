//
//  CardDetailInteractor.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardDetailInteractor {
    // MARK: - Class properties

    weak var presenter: CardDetailInteractorToPresenterProtocol?
}

// MARK: - CardDetailPresenterToInteractorProtocol

extension CardDetailInteractor: CardDetailPresenterToInteractorProtocol {
}
