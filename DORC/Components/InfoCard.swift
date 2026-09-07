//
//  InfoCard.swift
//  DORC
//
//  Created by Owen on 9/7/26.
//

import SwiftUI

struct InfoCard: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            Text(description)
                .font(.headline)
                .fontWeight(.regular)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(.regularMaterial)
        .foregroundStyle(.black)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay{RoundedRectangle(cornerRadius: 12)
                .strokeBorder(Color(red: 0.0, green: 0.18, blue: 0.32),
                    lineWidth: 2)
        }
    }
}

#Preview {
    InfoCard(title: "Achievements", description: "View your achievements and rewards here."
    )
}
