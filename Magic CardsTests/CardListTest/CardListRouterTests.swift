//
//  CardListRouterTests.swift
//  Magic CardsTests
//
//  Created by Javier Lage on 1/6/21.
//

@testable import Magic_Cards
import XCTest

class CardListRouterTests: XCTestCase {
    var mCardListRouter: CardListRouter!

    override func setUp() {
        super.setUp()
        mCardListRouter = CardListRouter()
    }

    func testTopVCIsCardDetailVCWhenPresented() {
        mCardListRouter.navigateToCardDetails(card: CardVO(name: "Ancestor's Chosen", imageUrl: "https://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=130550&type=card",
                                                           text: "Creatures you control get +1/+1.", rarity: "Uncommon"))
        XCTAssertTrue(CardListRouter.mNavigationController?.viewControllers.last is CardDetailViewController)
    }
}
