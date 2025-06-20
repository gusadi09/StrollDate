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
            VStack(alignment: .leading) {
                HStack {
                    Text("Your Turn")
                    
                    Text("7")
                }
                
                Text("Make your move, they are waiting 🎵")
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
    MatchesHeaderView()
}
