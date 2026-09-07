//
//  QuestCard.swift
//  DORC
//
//  Created by Owen on 9/6/26.
//

import SwiftUI

struct QuestCard: View {
    
    let title:String
    let description:String
    let xpReward:Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
            
            Text(description)
                .font(.caption)
            
            Text("Xp Reward: \(xpReward)")
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.horizontal, 12)
                .padding(.vertical, 7)
                .background(.cyan)
                .foregroundStyle(.white)
                .clipShape(Capsule())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(.white)
        .foregroundStyle(.black)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay{RoundedRectangle(cornerRadius: 12)
                .stroke(.cyan, lineWidth: 2)
        }
    }
}

#Preview {
    QuestCard(
        title: "Study French",
        description: "Practice listening, speaking, reading, writing",
        xpReward: 30
    )
    .padding()
}
