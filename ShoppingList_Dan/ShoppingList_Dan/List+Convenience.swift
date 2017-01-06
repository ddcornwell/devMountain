//
//  List+Convenience.swift
//  ShoppingList_Dan
//
//  Created by DANIEL CORNWELL on 12/16/16.
//  Copyright © 2016 DANIEL CORNWELL. All rights reserved.
//

import Foundation
import CoreData


extension List {
    convenience init(title: String, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        
        self.title = title
        
    }
}
