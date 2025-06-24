//
//  ChatType.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import Foundation

enum ChatType {
    case text(String)
    case audio(TimeInterval)
    case image
    case video
}

extension ChatType {
    var body: String {
        switch self {
        case .text(let string):
            return string
        case .audio(let timeInterval):
            let formatter = DateComponentsFormatter()
            formatter.allowedUnits = [.minute, .second]
            formatter.zeroFormattingBehavior = [.pad]

            let timeString = formatter.string(from: timeInterval) ?? "00:00"
            return timeString
        case .image:
            return "📸 Photo"
        case .video:
            return "🎥 Video"
        }
    }
}
