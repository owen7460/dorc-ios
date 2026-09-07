//
//  HomeView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.blue.opacity(0.12),
                                        .purple.opacity(0.18),.white], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(edges: .all)
                ScrollView{
                    VStack(spacing: 60){
                        welcomeSection
                        questContent
                    }
                    .padding(.top,50)
                }
            }.toolbar {
                ToolbarItem(placement: .principal){Image("dorc-typeface")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 90)}
            }
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 24){
            Text("Welcome back, Owen 👋")
                .font(.headline)
                .fontWeight(.bold)
            
            Button("Add Quests"){
                print("Add quest")
            }
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(.horizontal,20)
            .padding(.vertical, 10)
            .background(.blue.opacity(0.7))
            .clipShape(Capsule())
        }
        .padding(.top, 36)
        .padding(.bottom, 80)
    }
    
    private var questContent: some View {
        VStack {
            sectionHeader(title:"Your Pesonal Quests")
            sectionHeader(title:"DORC's Quests")
                .padding(.bottom, 34)
            Text("Quest cards")
        }
        .padding(.horizontal, 24)
    }
    
    private func sectionHeader(title: String) -> some View {
        HStack{
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            
            Spacer()
            
            Button{
                print("Add quest")
            }label: {
                HStack(spacing: 4){
                    Text("View All")
                        .font(.callout)
                        .fontWeight(.light)
                    
                    Image(systemName: "chevron.right")
                }
            }
            .foregroundStyle(.primary)
        }
    }
    
    
    
}

#Preview {
    HomeView()
}
