//
//  TurnCard.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import SwiftUI

struct TurnCard: View {
    private let item: TurnModel
    
    init(with item: TurnModel) {
        self.item = item
    }
    
    var body: some View {
        ZStack {
            item.profilePhoto
                .resizable()
                .frame(width: 145, height: 205)
                .blur(radius: 20)
                .overlay {
                    LinearGradient(
                        colors: [.black, .clear], startPoint: .bottom, endPoint: .top)
                }
            
            VStack(alignment: .center, spacing: 5) {
                if item.isMadeMove && !item.isActiveMove {
                    HStack {
                        Text("📣 They made a move!")
                            .font(.proximaNova(.regular, size: 9))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .background(Color(._0_B_0_C_0_D))
                            .clipShape(Capsule())
                    }
                } else if item.isMadeMove && item.isActiveMove {
                    HStack {
                        Text("📣")
                            .font(.proximaNova(.regular, size: 9))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 10)
                            .background(Color(._0_B_0_C_0_D))
                            .clipShape(Circle())
                        
                        Spacer()
                    }
                }
                
                Spacer()
                
                Text("Tap to answer")
                    .font(.proximaNova(.bold, size: 10))
                    .foregroundStyle(Color(.A_8_AFB_7))
                
                Spacer()
                
                Text("\(item.name), \(item.age)")
                    .font(.proximaNova(.bold, size: 15))
                    .lineLimit(2)
                    .foregroundStyle(.white)
                
                Text("\(item.question)")
                    .font(.proximaNova(.light, size: 10))
                    .foregroundStyle(Color(.CFCFFE).opacity(0.7))
                    .multilineTextAlignment(.center)
            }
            .padding(10)
        }
        .frame(width: 145, height: 205)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

#Preview {
    ScrollView(.horizontal) {
        LazyHStack {
            ForEach(0...20, id: \.self) { idx in
                TurnCard(
                    with: TurnModel(
                        name: "Amanda",
                        profilePhoto: Image(.userPhoto4),
                        age: 22,
                        question: "What is your most favorite childhood memory?",
                        isMadeMove: true,
                        isActiveMove: idx % 2 == 0
                    )
                )
            }
        }
        .padding()
    }
}
