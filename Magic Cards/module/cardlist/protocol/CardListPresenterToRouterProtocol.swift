//
//  CardListPresenterToRouterProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardListPresenterToRouterProtocol: AnyObject {
    func navigateToCardDetails(card: CardVO)
    func showErrorAlert(message: String)
}
