//
//  QuestCards.swift
//  DORC
//
//  Created by Owen on 9/7/26.
//

import SwiftUI

struct QuestCards: View {
    var body: some View {
        VStack(spacing: 22) {
            QuestCard(
                title: "Study French",
                description: "Practice listening, speaking, reading, writing",
                xpReward: 30
            )

            QuestCard(
                title: "Exercise",
                description: "Go for a walk, run, or bike ride",
                xpReward: 20
            )

            QuestCard(
                title: "Read a Book",
                description: "Read a book for 30 minutes",
                xpReward: 10
            )

            QuestCard(
                title: "Drink Water",
                description: "Drink 8 glasses of water today",
                xpReward: 10
            )

            QuestCard(
                title: "Practice Coding",
                description: "Spend 30 minutes practicing coding",
                xpReward: 25
            )
        }.padding(.horizontal,20)
    }
}

#Preview {
    QuestCards()
}
