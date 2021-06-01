//
//  CardListPresenterToInteractorProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardListPresenterToInteractorProtocol: AnyObject {
    var presenter: CardListInteractorToPresenterProtocol? { get set }
    
    func getMagicCards()
    
    func getCardsFromDB() -> [CardVO]?
}
