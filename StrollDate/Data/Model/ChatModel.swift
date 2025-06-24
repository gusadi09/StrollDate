//
//  ChatModel.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import SwiftUI

struct ChatModel: Identifiable {
    let id = UUID()
    let name: String
    let profilePhoto: Image
    let chatType: ChatType
    let isNewChat: Bool
    let isFavourite: Bool
    let unreadCount: Int
    let isMyMove: Bool
    let isSender: Bool
    let timeStamp: String
}
