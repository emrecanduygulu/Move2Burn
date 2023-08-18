//
//  Move2BurnApp.swift
//  Move2Burn
//
//  Created by emre can duygulu on 18.08.2023.
//

import SwiftUI

@main
struct Move2BurnApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
