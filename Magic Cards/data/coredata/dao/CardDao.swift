//
//  CardDao.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import CoreData
import Foundation

class CardDao: BaseDao {
    let entityName = "Card"

    func create(cardVO: CardVO) {
        /* Before you can do anything with Core Data, you need a managed object context. */
        let managedContext = CoreDataManager.sharedManager.persistentContainer.viewContext
        if let entity = CardEntity.create(managedContext) {
            entity.name = cardVO.name ?? ""
            entity.text = cardVO.text ?? ""
            entity.image = cardVO.imageUrl ?? ""
            entity.rarity = cardVO.rarity ?? ""
            do {
                try managedContext.save()
            } catch let error as NSError {
                print("Could not save. \(error), \(error.userInfo)")
            }
        }
    }

    func findAll() -> [CardEntity]? {
        if let entities = findAllRecords(entityName) {
            return entities as? [CardEntity]
        }
        return nil
    }
    
    func deleteAll() {
        if let toDelete = findAll() {
            deleteAllRecords(toDelete)
        }
    }
}
