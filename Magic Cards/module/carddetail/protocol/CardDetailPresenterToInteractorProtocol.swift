//
//  CardDetailPresenterToInteractorProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardDetailPresenterToInteractorProtocol: AnyObject {
    var presenter: CardDetailInteractorToPresenterProtocol? { get set }
}
