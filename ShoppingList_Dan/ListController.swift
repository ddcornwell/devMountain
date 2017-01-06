//
//  ListController.swift
//  ShoppingList_Dan
//
//  Created by DANIEL CORNWELL on 12/16/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation
import CoreData

class ListController {
    
    static let sharedController = ListController()
    
    var lists: [List] {
        let moc = CoreDataStack.context
        let fetchRequest: NSFetchRequest<List> = List.fetchRequest()
        return (try? moc.fetch(fetchRequest)) ?? []
    }
    
    // MARK: - CRUD methods
    
    func add(list: List) {
        saveToPersistentStore()
    }
    
    func delete(list: List) {
        if let moc = list.managedObjectContext {
            moc.delete(list)
        }
        saveToPersistentStore()
    }
    
    // MARK: - Persistence
    
    func saveToPersistentStore() {
        let moc = CoreDataStack.context
        do {
            try moc.save()
        } catch {
            print("Unable to save to persistent store: \(error)")
        }
    }
}


