//
//  VoteApp.swift
//  vote
//
//  Created by Kazunari Hirosawa on 2021/08/04.
//

import SwiftUI

@main
struct VoteApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(AppState())
        }
    }
}
