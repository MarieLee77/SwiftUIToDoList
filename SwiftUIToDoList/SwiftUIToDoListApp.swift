//
//  SwiftUIToDoListApp.swift
//  SwiftUIToDoList
//
//  Created by scholar on 8/4/22.
//

import SwiftUI

@main
struct SwiftUIToDoListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
