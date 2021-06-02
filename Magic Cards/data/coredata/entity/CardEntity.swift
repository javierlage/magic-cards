//
//  CardEntity.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import CoreData
import Foundation

class CardEntity: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var image: String
    @NSManaged var text: String
    @NSManaged var rarity: String

    class func create(_ context: NSManagedObjectContext) -> CardEntity? {
        if let newCard = NSEntityDescription.insertNewObject(forEntityName: "Card", into: context) as? CardEntity {
            return newCard
        }
        return nil
    }
}
