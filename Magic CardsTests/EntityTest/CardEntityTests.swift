//
//  CardEntityTests.swift
//  Magic CardsTests
//
//  Created by Javier Lage on 1/6/21.
//

@testable import Magic_Cards
import XCTest

class CardEntityTests: XCTestCase {
    func testCardSetGet() {
        let card = CardVO(name: "Ancestor's Chosen", imageUrl: "https://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=130550&type=card",
                          text: "Creatures you control get +1/+1.", rarity: "Uncommon")
        XCTAssertEqual(card.name, "Ancestor's Chosen")
        XCTAssertEqual(card.text, "Creatures you control get +1/+1.")
        XCTAssertEqual(card.rarity, "Uncommon")
    }
}
