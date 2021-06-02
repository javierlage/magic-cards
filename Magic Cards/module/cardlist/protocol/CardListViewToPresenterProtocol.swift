//
//  CardListViewToPresenterProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardListViewToPresenterProtocol: AnyObject {
    var view: CardListPresenterToViewProtocol? { get set }
    var interactor: CardListPresenterToInteractorProtocol? { get set }
    var router: CardListPresenterToRouterProtocol? { get set }

    func initUI()
    func getCardsCount() -> Int
    func getCardAt(index: Int) -> CardVO
    func onCardClickedAt(index: Int)
    func onRefreshCards()
}
