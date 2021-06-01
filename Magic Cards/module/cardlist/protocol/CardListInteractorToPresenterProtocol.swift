//
//  CardListInteractorToPresenterProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardListInteractorToPresenterProtocol: AnyObject {
    func showProgressIndicator(_ isVisible: Bool)
    func onCardListResponse(cards: [CardVO]?)
    func onCardListFailure(error: ServiceError)
}
