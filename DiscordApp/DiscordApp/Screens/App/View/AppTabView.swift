//
//  AppTabView.swift
//  DiscordApp
//
//  Created by Nam. Tran Dinh - CMC Global DKR1 on 10/3/25.
//

import SwiftUI

struct AppTabView: View {
    
    @StateObject private var tabVM = AppTabViewModel()
    
    var body: some View {
        TabView(selection: $tabVM.selectedTabIndex) {
            HomeView()
                .tag(0)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SearchView()
                .tag(1)
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            ProfileView()
                .tag(2)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    AppTabView()
}
