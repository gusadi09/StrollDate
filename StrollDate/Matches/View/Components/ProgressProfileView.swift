//
//  ProgressProfileView.swift
//  StrollDate
//
//  Created by Ewide Dev 5 on 20/06/25.
//

import SwiftUI

struct ProgressProfileView: View {
    var image: Image
    var progress: Double
    var progressText: String

    let arcStartAngle: Double = -210
    let arcEndAngle: Double = 30
    let lineWidth: CGFloat = 5

    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            let effectiveAngle = arcStartAngle + (arcEndAngle - arcStartAngle) * progress

            VStack(spacing: -11) {
                image
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)
                    .padding(5)
                    .overlay {
                        ZStack {
                            ArcShape(startAngle: .degrees(arcStartAngle), endAngle: .degrees(arcEndAngle))
                                .stroke(Color.gray.opacity(0.3), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                            
                            ArcShape(startAngle: .degrees(arcStartAngle),
                                     endAngle: .degrees(effectiveAngle))
                            .stroke(
                                LinearGradient(colors: [.black, Color(._36631_A), Color(._4_C_8_D_25)], startPoint: .bottomLeading, endPoint: .trailing),
                                style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                            )
                        }
                    }
                
                VStack {
                    Text(progressText)
                        .font(.system(size: 10.8))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 13.5)
                        .padding(.vertical, 5.4)
                        .background(Color(._12161_F))
                        .clipShape(Capsule())
                }
            }
            .frame(width: size.width, height: size.height)
        }
        .frame(width: 65, height: 65)
    }
}

struct ArcShape: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = min(rect.width, rect.height) / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)

        path.addArc(center: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: false)

        return path
    }
}

#Preview {
    ProgressProfileView(
        image: Image(.userProfilePhoto),
        progress: 0.9,
        progressText: "90"
    )
}

