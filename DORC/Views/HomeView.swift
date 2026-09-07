//
//  HomeView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack{
            Background()
            
            ScrollView{
                VStack(spacing: 20){
                    welcomeSection
                    questContent
                    QuestCards()
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
            .background(.cyan.opacity(0.7))
            .clipShape(Capsule())
            .shadow(color: .cyan.opacity(0.4), radius: 10, x: 0, y: 10)
        }
        .padding(.top, 36)
        .padding(.bottom, 100)
    }
    
    private var questContent: some View {
        VStack {
            sectionHeader(title:"Your Pesonal Quests")
            sectionHeader(title:"DORC's Quests")
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
                        .font(.caption)
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
