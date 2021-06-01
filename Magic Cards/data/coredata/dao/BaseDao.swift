//
//  BaseDao.swift
//  Magic Cards
//
//  Created by Javier Lage on 1/6/21.
//

import CoreData
import Foundation

class BaseDao {
    func findAllRecords(_ entityName: String) -> [NSFetchRequestResult]? {
        /* Before you can do anything with Core Data, you need a managed object context. */
        let managedContext = CoreDataManager.sharedManager.persistentContainer.viewContext
        /* As the name suggests, NSFetchRequest is the class responsible for fetching from Core Data.
         Initializing a fetch request with init(entityName:), fetches all objects of a particular entity. This is what you do here to fetch all Person entities.
         */
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: entityName)
        /* You hand the fetch request over to the managed object context to do the heavy lifting. fetch(_:) returns an array of managed objects meeting the criteria specified by the fetch request. */
        do {
            let entities = try managedContext.fetch(fetchRequest)
            return entities
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
            return nil
        }
    }
}
