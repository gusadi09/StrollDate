//
//  MatchesHeaderView.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 19/06/25.
//

import SwiftUI

struct MatchesHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                HStack(alignment: .center, spacing: 10) {
                    Text("Your Turn")
                        .font(.proximaNova(.bold, size: 22))
                        .foregroundStyle(.white)
                    
                    
                    Text("7")
                        .font(.proximaNova(.bold, size: 10))
                        .foregroundStyle(.black)
                        .padding(5)
                        .background(Color(.B_49_AD_1))
                        .clipShape(Circle())
                }
                
                Text("Make your move, they are waiting 🎵")
                    .font(.proximaNova(.lightItalic, size: 12))
                    .foregroundStyle(.A_8_AFB_7)
            }
            
            Spacer()
            
            ProgressProfileView(
                image: Image(.userProfilePhoto),
                progress: 0.9,
                progressText: "90"
            )
        }
    }
}

#Preview {
    ZStack {
        Image(.background)
            .resizable()
            .ignoresSafeArea(edges: .all)
        
        MatchesHeaderView()
    }
}
