//
//  Move2BurnApp.swift
//  Move2Burn
//
//  Created by emre can duygulu on 18.08.2023.
//

import SwiftUI

@main
struct Move2BurnApp: App {
    @StateObject var manager = HealthManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(manager)
        }
    }
}
