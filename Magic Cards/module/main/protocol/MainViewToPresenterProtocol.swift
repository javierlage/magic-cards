//
//  MainViewToPresenterProtocol.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol MainViewToPresenterProtocol: AnyObject {
    var view: MainPresenterToViewProtocol? { get set }
    var interactor: MainPresenterToInteractorProtocol? { get set }
    var router: MainPresenterToRouterProtocol? { get set }
    
    func onStartButtonClicked()
}
