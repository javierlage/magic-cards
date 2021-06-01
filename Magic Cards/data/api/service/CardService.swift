//
//  CardService.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import Foundation

class CardService {
    private static let cardListUrl = ResourceUtil.getResource(key: "cardList", resource: "Url")

    static func getCardList(listener: CardListServiceDelegate) {
        listener.onCardListPreExecute()
        RequestHelper.requestExecute(cardListUrl, parameters: [:], method: .get, success: { response in
            // Evaluate status code for manage response.
            switch response.response?.statusCode {
            case HTTPStatusCode.ok.rawValue:
                do {
                    let result = try JSONDecoder().decode(CardListResponse.self, from: response.data!)
                    listener.onCardListResponse(data: result.cards)
                } catch let error {
                    listener.onCardListFailure(error: DecodeServiceError(message: error.localizedDescription))
                }
            case .some(_), .none:
                listener.onCardListFailure(error: ServiceError())
            }

        }, failure: { error in
            listener.onCardListFailure(error: ServiceError(message: error.debugDescription))
        })
    }
}
