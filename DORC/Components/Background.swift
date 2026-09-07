//
//  Background.swift
//  DORC
//
//  Created by Owen on 9/7/26.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [            Color.indigo.opacity(0.10), Color(.systemBackground), Color.purple.opacity(0.20)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
        
        Circle()
            .fill(.indigo.opacity(0.30))
            .frame(width: 380, height: 380)
            .blur(radius: 80)
            .offset(x: -180, y: -250)
        
        Circle()
            .fill(.purple.opacity(0.15))
            .frame(width: 380, height: 380)
            .blur(radius: 80)
            .offset(x: 200, y: 50)
    }
}

#Preview {
    Background()
}
