//
//  CardListPresenterToViewProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardListPresenterToViewProtocol: AnyObject {
    func showActivityIndicator(_ isVisible: Bool)
    func onCardsLoaded()
}
