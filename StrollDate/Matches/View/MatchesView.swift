//
//  ContentView.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 19/06/25.
//

import SwiftUI

struct MatchesView: View {
    
    @ObservedObject private var viewModel: MatchesViewModel = MatchesViewModel()
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea(edges: .all)
            
            VStack{
                MatchesHeaderView()
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(alignment: .leading, spacing: 25, pinnedViews: [.sectionHeaders]) {
                        Section {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 20) {
                                    ForEach(viewModel.turnSampleData) { data in
                                        TurnCard(with: data)
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.top, 5)
                            }
                        }
                        .listRowSeparator(.hidden)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .listRowBackground(Color.clear)
                        
                        Section {
                            ForEach(0...100, id: \.self) { _ in
                                Text("\(viewModel.selectedPage)")
                                    .foregroundStyle(.white)
                                    .padding(.horizontal)
                            }
                        } header: {
                            ChatHeaderSection()
                                .environmentObject(viewModel)
                        }
                        .listRowSeparator(.hidden)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .listRowBackground(Color.clear)
                    }
                }
            }
        }
    }
}

#Preview {
    MatchesView()
}
