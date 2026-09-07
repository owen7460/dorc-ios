//
//  RanksView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct RanksView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue.opacity(0.1).ignoresSafeArea(edges: .all)
                
                ScrollView{
                    Text("LEADERBOARD")
                        .font(.title)
                        .fontWeight(.black)
                        .padding(.bottom, 20)
                    
                    
                    leader(number:1, name: "Leo", level: 3, xp: 120)
                    leader(number:2, name: "Ava", level: 2, xp: 80)
                    leader(number:3, name: "Nash", level: 1, xp: 0)
                }
            }.toolbar {
                ToolbarItem(placement: .principal) {
                    Image("dorc-typeface")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                }
            }
        }
    }
    
    private func leader
    (number: Int,
     name: String,
     level: Int,
     xp: Int) -> some View {
        HStack{
            Text("\(number). \(name) - Level \(level) - \(xp) XP")
        }
        .fontWeight(.regular)
        .padding(.bottom, 10)
    }
}

#Preview {
    RanksView()
}
