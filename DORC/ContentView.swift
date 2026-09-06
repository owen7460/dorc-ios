//
//  ContentView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            QuestsView()
                .tabItem {
                    Label("Quests", systemImage: "safari.fill")
                }
            
            GuildView()
                .tabItem {
                    Label("Guild", systemImage: "person.3.fill")
                }
            
            RanksView()
                .tabItem {
                    Label("Ranks", systemImage: "trophy.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }.accentColor(.cyan)
    }
}

#Preview {
    ContentView()
}
