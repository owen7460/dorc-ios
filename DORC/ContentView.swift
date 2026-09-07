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
            NavigationStack{
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            NavigationStack{
                QuestsView()
            }
            .tabItem {
                Label("Quests", systemImage: "safari.fill")
            }
            
            NavigationStack{
                GuildView()
            }
            .tabItem {
                Label("Guild", systemImage: "person.3.fill")
            }
            
            NavigationStack{
                RanksView()
            }
            .tabItem {
                Label("Ranks", systemImage: "trophy.fill")
            }
            
            NavigationStack{
                ProfileView()
            }
            .tabItem {
                Label("Profile", systemImage: "person.fill")
            }
        }.accentColor(.cyan)
    }
}

#Preview {
    ContentView()
}
