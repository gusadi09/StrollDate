//
//  TurnModel.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import SwiftUI

struct TurnModel: Identifiable {
    let id = UUID()
    let name: String
    let profilePhoto: Image
    let age: UInt
    let question: String
    let isMadeMove: Bool
    let isActiveMove: Bool
}
