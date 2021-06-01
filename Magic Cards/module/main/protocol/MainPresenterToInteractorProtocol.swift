//
//  MainPresenterToInteractorProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol MainPresenterToInteractorProtocol: AnyObject {
    var presenter: MainInteractorToPresenterProtocol? { get set }
}
