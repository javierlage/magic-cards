//
//  CardListServiceDelegate.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

protocol CardListServiceDelegate {
    func onCardListPreExecute()
    func onCardListResponse(data: [CardVO]?)
    func onCardListFailure(error: ServiceError)
}
