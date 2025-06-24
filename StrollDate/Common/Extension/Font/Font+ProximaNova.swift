//
//  Font+ProximaNova.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 19/06/25.
//

import SwiftUI

extension Font {
    enum ProximaNovaStyle: String {
        case blackItalic = "proximanova-blackit"
        case bold = "proximanova-bold"
        case boldItalic = "proximanova-boldit"
        case lightItalic = "proximanova-lightit"
        case light = "proximanova-light"
        case regular = "proximanova-regular"
    }
    
    static func proximaNova(_ type: ProximaNovaStyle, size: CGFloat) -> Font {
        .custom(type.rawValue, size: size)
    }
}
