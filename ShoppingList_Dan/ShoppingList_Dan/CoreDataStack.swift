//
//  CoreDataStack.swift
//  ShoppingList_Dan
//
//  Created by DANIEL CORNWELL on 12/16/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation
import CoreData



enum CoreDataStack {
    
    static let container: NSPersistentContainer =  {
        let container = NSPersistentContainer(name: "ShoppingList")
        container.loadPersistentStores(completionHandler: {(storeDescription, error) in if let error = error {
            fatalError("Error loading persistent stores: \(error)")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {return container.viewContext}
}
