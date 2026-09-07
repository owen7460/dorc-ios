//
//  QuestsView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct QuestsView: View {
    var body: some View {
        
        ZStack{
            Color.blue.opacity(0.1).ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 10){
                    Text("ALL QUESTS")
                        .font(.title)
                        .fontWeight(.black)
                }
                
                QuestCards()
            }
        }.toolbar {
            ToolbarItem(placement: .principal){
                Image("dorc-typeface")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90)
            }
        }
    }
}

#Preview {
    QuestsView()
}
