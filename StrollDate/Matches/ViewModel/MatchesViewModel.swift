//
//  MatchesViewModel.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 19/06/25.
//

import SwiftUI

final class MatchesViewModel: ObservableObject {
    let turnSampleData: [TurnModel] = [
        TurnModel(
            name: "Amanda",
            profilePhoto: Image(.userPhoto4),
            age: 22,
            question: "What is your most favorite childhood memory?",
            isMadeMove: false,
            isActiveMove: false
        ),
        TurnModel(
            name: "Malte",
            profilePhoto: Image(.userPhoto1),
            age: 31,
            question: "What is the most important quality in friendships to you?",
            isMadeMove: true,
            isActiveMove: false
        ),
        TurnModel(
            name: "Zack",
            profilePhoto: Image(.userPhoto7),
            age: 29,
            question: "If you could choose to have one superpower, what would it be?",
            isMadeMove: true,
            isActiveMove: true
        ),
    ]
    
    let chatSampleData: [ChatModel] = [
        ChatModel(
            name: "Jessica",
            profilePhoto: Image(.userPhoto6),
            chatType: .audio(58),
            isNewChat: true,
            isFavourite: true,
            unreadCount: 0,
            isMyMove: false,
            isSender: false,
            timeStamp: "6:21 pm"
        ),
        ChatModel(
            name: "Amanda",
            profilePhoto: Image(.userPhoto8),
            chatType: .text("Lol I love house music too"),
            isNewChat: true,
            isFavourite: false,
            unreadCount: 0,
            isMyMove: true,
            isSender: false,
            timeStamp: "6:21 pm"
        ),
        ChatModel(
            name: "Sila",
            profilePhoto: Image(.userPhoto5),
            chatType: .text("I love the people there tbh, have you been?"),
            isNewChat: false,
            isFavourite: false,
            unreadCount: 0,
            isMyMove: false,
            isSender: true,
            timeStamp: "Wed"
        ),
        ChatModel(
            name: "Marie",
            profilePhoto: Image(.userPhoto3),
            chatType: .text("Hahaha that’s interesting, it does seem like people here are starting to like house music more"),
            isNewChat: true,
            isFavourite: false,
            unreadCount: 4,
            isMyMove: true,
            isSender: false,
            timeStamp: "6:21 pm"
        ),
        ChatModel(
            name: "Jessica",
            profilePhoto: Image(.userPhoto6),
            chatType: .text("I love the people there tbh, have you been?"),
            isNewChat: true,
            isFavourite: false,
            unreadCount: 0,
            isMyMove: true,
            isSender: false,
            timeStamp: "6:21 pm"
        )
    ]
    
    let pages: [MatchesPageType] = [.chats, .pending]
    
    @Published var selectedPage: MatchesPageType = .chats
}
