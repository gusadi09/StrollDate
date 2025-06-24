//
//  ChatCard.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import SwiftUI

struct ChatCard: View {
    let item: ChatModel
    
    init(item: ChatModel) {
        self.item = item
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            item.profilePhoto
                .resizable()
                .scaledToFit()
                .frame(height: 58)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack(spacing: 10) {
                        Text(item.name)
                            .font(.proximaNova(.bold, size: 16))
                            .foregroundStyle(.white)
                            .lineLimit(1)
                        
                        if item.isNewChat && !item.isMyMove {
                            HStack(spacing: 5) {
                                Circle()
                                    .frame(width: 5, height: 5)
                                
                                Text("New Chat")
                                    .font(.proximaNova(.regular, size: 10))
                            }
                            .foregroundStyle(.F_5_F_5_F_5)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color(._42406_F).opacity(0.8))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        } else if item.isNewChat && item.isMyMove{
                            HStack(spacing: 5) {
                                Text("Your move")
                                    .font(.proximaNova(.bold, size: 10))
                            }
                            .foregroundStyle(.white)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color(._282828).opacity(0.8))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        Spacer()
                        
                        Text(item.timeStamp)
                            .font(.proximaNova(.regular, size: 12))
                            .foregroundStyle(item.isNewChat ? Color(._555390) :  Color(.A_8_AFB_7))
                            .fontWeight(.semibold)
                    }
                    .padding(.trailing)
                    
                    HStack(alignment: .top) {
                        switch item.chatType {
                        case .text(let msg):
                            Text("\(item.isSender ? "You: " : "")\(msg)")
                                .font(.proximaNova(item.isNewChat ? .bold : .regular, size: 14))
                                .lineLimit(2)
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(item.isNewChat ? .white : ._818181)
                        case .audio:
                            HStack {
                                Image(.microphone)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 17)
                                
                                Image(.audioWave)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 11.25)
                                
                                Text("\(item.chatType.body)")
                                    .font(.proximaNova(.bold, size: 14))
                                    .foregroundStyle(._8669_A_8)
                            }
                        case .image:
                            Text(item.chatType.body)
                                .font(.proximaNova(item.isNewChat ? .bold : .regular, size: 14))
                                .foregroundStyle(item.isNewChat ? .white : ._818181)
                                .lineLimit(2)
                        case .video:
                            Text(item.chatType.body)
                                .font(.proximaNova(item.isNewChat ? .bold : .regular, size: 14))
                                .foregroundStyle(item.isNewChat ? .white : ._818181)
                                .lineLimit(2)
                        }
                        
                        Spacer()
                        
                        if item.unreadCount > 1 {
                            Text("\(item.unreadCount)")
                                .font(.proximaNova(.bold, size: 10))
                                .scaledToFit()
                                .frame(height: 10)
                                .foregroundStyle(.black)
                                .padding(.horizontal, 5)
                                .padding(.vertical, 2)
                                .background(Color(.B_5_B_2_FF))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        if item.isFavourite {
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .font(.proximaNova(.bold, size: 10))
                                .frame(height: 10)
                                .foregroundStyle(.black)
                                .padding(.horizontal, 5)
                                .padding(.vertical, 2)
                                .background(Color(.B_5_B_2_FF))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    .padding(.trailing)
                }
                
                Spacer()
                
                Divider()
                    .frame(height: 1)
                    .background(Color(._292_B_2_E))
                    .padding(.top, 3)
            }
        }
        .frame(height: 68)
    }
}

#Preview {
    ChatCard(
        item: ChatModel(
            name: "Jessica",
            profilePhoto: Image(.userPhoto6),
            chatType: .text("You: I love the people there tbh, have you been?"),
            isNewChat: true,
            isFavourite: true,
            unreadCount: 4,
            isMyMove: true,
            isSender: true,
            timeStamp: "Wed")
    )
    .preferredColorScheme(.dark)
}
