//
//  ToDoListItem.swift
//  SwiftUIToDoList
//
//  Created by scholar on 8/4/22.
//

import Foundation
import CoreData

class ToDoListItem: NSManagedObject, Identifiable {
    @NSManaged var name: String?
    @NSManaged var createdAt: Date?
}

extension ToDoListItem {
    static func getAllToDoListItems() -> NSFetchRequest<ToDoListItem> {
        let request: NSFetchRequest<ToDoListItem> =
        ToDoListItem.fetchRequest()as!
        NSFetchRequest<ToDoListItem>
        let sort = NSSortDescriptor(key: "createdAt", ascending: false)
        request.sortDescriptors = [sort]
        
        return request
    }
}
 
