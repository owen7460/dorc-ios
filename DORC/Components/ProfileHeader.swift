//
//  ProfileHeader.swift
//  DORC
//
//  Created by Owen on 9/7/26.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("PROFILE")
                .font(.title)
                .fontWeight(.black)
            Text("Manage your profile and update your personal information here.")
                .font(.headline)
                .fontWeight(.light)
            Button {
                
            } label: {
                Text("Update Password")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(12)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.0, green: 0.18, blue: 0.32))
                    .clipShape(Capsule())
            }
        }
    }
}

#Preview {
    ProfileHeader()
}
