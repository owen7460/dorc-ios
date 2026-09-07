//
//  ProfileView.swift
//  DORC
//
//  Created by Owen on 9/5/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Background()
                
                ScrollView {
                    VStack(spacing: 20){
                        ProfileHeader()
                        
                        PersonalInfo()
                        
                        InfoCard(title: "Achievements"
                                 , description: "View your achievements and rewards here."
                        )
                        
                        InfoCard(title: "Progress"
                                 , description: "Track your daily quests and overall progress here."
                        )
                        
                        InfoCard(title: "Guild"
                                 , description: "Join or create a guild to collaborate with other players."
                        )
                        
                    }
                }.padding(.horizontal,20)
            }.toolbar{
                ToolbarItem(placement: .principal) {
                    Image("dorc-typeface")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}
