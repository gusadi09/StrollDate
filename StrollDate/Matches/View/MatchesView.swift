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
            
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(edges: .all)
            
            VStack{
                MatchesHeaderView()
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(alignment: .leading, spacing: 0, pinnedViews: [.sectionHeaders]) {
                        Section {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 20) {
                                    ForEach(viewModel.turnSampleData) { data in
                                        TurnCard(with: data)
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.top, 5)
                                .padding(.bottom, 25)
                            }
                        }
                        
                        Group {
                            Section {
                                switch viewModel.selectedPage {
                                case .chats:
                                    ForEach(viewModel.chatSampleData, id: \.id) { item in
                                        ChatCard(item: item)
                                            .padding(.bottom, 10)
                                            .padding(.top, 15)
                                            .listRowBackground(Color.black)
                                            .listRowSeparatorTint(Color(._292_B_2_E))
                                            .listStyle(.plain)
                                    }
                                case .pending:
                                    Text("Pending")
                                        .font(.proximaNova(.regular, size: 14))
                                        .foregroundStyle(.white)
                                        .padding()
                                }
                                
                            } header: {
                                ChatHeaderSection()
                                    .environmentObject(viewModel)
                            }
                        }
                        .background(Color.black.ignoresSafeArea())
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MatchesView()
}
