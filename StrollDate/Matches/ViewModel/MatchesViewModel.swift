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
        )
    ]
}
