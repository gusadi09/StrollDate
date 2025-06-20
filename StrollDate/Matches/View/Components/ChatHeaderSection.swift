//
//  ChatHeaderSection.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import SwiftUI

struct ChatHeaderSection: View {
    
    @EnvironmentObject var viewModel: MatchesViewModel
    @Namespace var tab
    
    var body: some View {
        HStack(spacing: 15) {
            ForEach(viewModel.pages, id: \.rawValue) { page in
                Button {
                    viewModel.selectedPage = page
                } label: {
                    Text(page.rawValue)
                        .font(.proximaNova(.bold, size: 22))
                        .padding(.bottom, 5)
                        .background(alignment: .bottom) {
                            if viewModel.selectedPage == page {
                                Rectangle()
                                    .frame(height: 1)
                                    .matchedGeometryEffect(id: "Tab", in: tab)
                                
                            }
                        }
                        .contentShape(Rectangle())
                        .foregroundStyle(viewModel.selectedPage == page ? .white : .gray)
                        .animation(.easeInOut, value: viewModel.selectedPage)
                }
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .background(Color.black)
    }
}

#Preview {
    ChatHeaderSection()
}
