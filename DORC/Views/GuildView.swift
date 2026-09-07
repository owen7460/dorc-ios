//
//  GuildView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct GuildView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color.blue.opacity(0.1).ignoresSafeArea()
                
                ScrollView {
                        Text("GUILD PAGE")
                            .font(.title)
                            .fontWeight(.black)
                        
                    Spacer()
                }
            }.toolbar {
                ToolbarItem(placement: .principal){Image("dorc-typeface")
                        .resizable()
                        .scaledToFit()
                    .frame(width:90)}
                }
        }
    }
}

#Preview {
    GuildView()
}


