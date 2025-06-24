//
//  MainTabBarView.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 21/06/25.
//

import SwiftUI

struct MainTabBarView: View {
    
    @ObservedObject var viewModel = MainTabBarViewModel()
    
    init() {
        UITabBar.appearance().backgroundColor = ._0_F_1115
        UITabBar.appearance().barTintColor = UIColor.black
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $viewModel.page) {
                ZStack {
                    Image(.background)
                        .resizable()
                        .ignoresSafeArea(edges: .all)
                    
                    Text("Cards")
                        .foregroundStyle(.white)
                }
                    .tag(PageType.cards)
                
                ZStack {
                    Image(.background)
                        .resizable()
                        .ignoresSafeArea(edges: .all)
                    
                    Text("Bonfire")
                        .foregroundStyle(.white)
                }
                    .tag(PageType.bonfire)
                
                MatchesView()
                    .tag(PageType.matches)
                
                ZStack {
                    Image(.background)
                        .resizable()
                        .ignoresSafeArea(edges: .all)
                    
                    Text("Profile")
                        .foregroundStyle(.white)
                }
                    .tag(PageType.profile)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea()
            
            HStack {
                
                Spacer()
                
                Button(action: {
                    viewModel.page = .cards
                }, label: {
                    VStack {
                        ZStack(alignment: .topTrailing) {
                            Image(viewModel.page == .cards ? .cardActive : .cardInactive)
                            
                            Text("10")
                                .font(.proximaNova(.bold, size: 7))
                                .foregroundStyle(.black)
                                .padding(.vertical, 2)
                                .padding(.horizontal, 4)
                                .background(Color(.B_5_B_2_FF))
                                .clipShape(Capsule())
                                .overlay {
                                    Capsule()
                                        .stroke(Color(._0_F_1115), style: StrokeStyle(lineWidth: 1))
                                }
                        }
                        
                        Text("Cards")
                            .font(.proximaNova(.bold, size: 10))
                            .foregroundStyle(viewModel.page == .cards ? .B_5_B_2_FF : ._5_F_5_F_60)
                    }
                })
                
                Spacer()
                
                Button(action: {
                    viewModel.page = .bonfire
                }, label: {
                    VStack {
                        Image(viewModel.page == .bonfire ? .bonfireActive : .bonfireInactive)
                        
                        Text("Bonfire")
                            .font(.proximaNova(.bold, size: 10))
                            .foregroundStyle(viewModel.page == .bonfire ? .B_5_B_2_FF : ._5_F_5_F_60)
                    }
                })
                
                Spacer()
                
                Button(action: {
                    viewModel.page = .matches
                }, label: {
                    VStack {
                        Image(viewModel.page == .matches ? .bubbleActive : .bubbleInactive)
                        
                        Text("Matches")
                            .font(.proximaNova(.bold, size: 10))
                            .foregroundStyle(viewModel.page == .matches ? .B_5_B_2_FF : ._5_F_5_F_60)
                    }
                })
                
                Spacer()
                
                Button(action: {
                    viewModel.page = .profile
                }, label: {
                    VStack {
                        Image(.profileTabBar)
                        
                        Text("Profile")
                            .font(.proximaNova(.bold, size: 10))
                            .foregroundStyle(viewModel.page == .profile ? .B_5_B_2_FF : ._5_F_5_F_60)
                    }
                })
                
                Spacer()
                
            }
            .padding(.horizontal, 5)
            .padding(.top, 8)
            .background(Color(._0_F_1115))
            .shadow(color: ._050505, radius: 25, x: 0, y: -15)
        }
    }
}

#Preview {
    MainTabBarView()
}
