//
//  DiscordAppApp.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

@main
struct DiscordApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(ViewRouter.shared)
                .environmentObject(AppTabViewModel.shared)
        }
    }
}
