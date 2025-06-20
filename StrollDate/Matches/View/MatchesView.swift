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
            
            VStack{
                MatchesHeaderView()
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                List {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 20) {
                            ForEach(viewModel.turnSampleData) { data in
                                TurnCard(with: data)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                    .listRowBackground(Color.clear)
                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    MatchesView()
}
