//
//  CardDetailViewToPresenterProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardDetailViewToPresenterProtocol: AnyObject {
    var view: CardDetailPresenterToViewProtocol? { get set }
    var interactor: CardDetailPresenterToInteractorProtocol? { get set }
    var router: CardDetailPresenterToRouterProtocol? { get set }
    
    var mCard: CardVO! {get set}
    
    func getCardName() -> String
    func getCardImage() -> String?
    func getCardOriginalText() -> String
}
