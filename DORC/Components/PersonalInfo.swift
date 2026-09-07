//
//  PersonalInfo.swift
//  DORC
//
//  Created by Owen on 9/7/26.
//

import SwiftUI

struct PersonalInfo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("PERSONAL INFORMATION")
                .font(.title3)
                .fontWeight(.bold)
            
            Button {
                
            } label: {
                Label("Edit", systemImage: "square.and.pencil")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(10)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.0, green: 0.18, blue: 0.32))
                    .clipShape(Capsule())
            }
            
            Divider()
                .overlay(Color(red: 0.0, green: 0.18, blue: 0.32))
            
            Text("Full Name: Owen Ouyang")
                .font(.subheadline)
                .fontWeight(.bold)
            
            HStack(spacing: 0) {
                Text("Email: ")
                    .fontWeight(.bold)
                Text(verbatim: "ouyangxiongwen@gmail.com")
                    .fontWeight(.bold)
            }

            .font(.subheadline)

            .foregroundStyle(.black)
            
            Text("Bio: You can edit your bio here")
                .font(.subheadline)
                .fontWeight(.bold)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(.regularMaterial)
        .foregroundStyle(.black)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .overlay{RoundedRectangle(cornerRadius: 12)
                .strokeBorder(
                    Color(red: 0.0, green: 0.18, blue: 0.32),
                    lineWidth: 2)
        }
    }
}

#Preview {
    PersonalInfo()
}
