//
//  Font+ProximaNova.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 19/06/25.
//

import SwiftUI

extension Font {
    enum ProximaNovaStyle: String {
        case black = "proximanova_black"
        case blackItalic = "proximanova_blackit"
        case bold = "proximanova_bold"
        case boldItalic = "proximanova_boldit"
        case extraBold = "proximanova_extrabold"
        case light = "proximanova_light"
        case regular = "proximanova_regular"
    }
    
    static func proximaNova(_ type: ProximaNovaStyle, size: CGFloat) -> Font {
        .custom(type.rawValue, size: size)
    }
}
