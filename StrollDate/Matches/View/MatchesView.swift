//
//  ContentView.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 19/06/25.
//

import SwiftUI

struct MatchesView: View {
    
    private let viewModel: MatchesViewModel = MatchesViewModel()
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea(edges: .all)
        }
    }
}

#Preview {
    MatchesView()
}
