//
//  GoalCardView.swift
//  Move2Burn
//
//  Created by emre can duygulu on 23.08.2023.
//

import SwiftUI

struct ProgressPie: View {
    let progress: Double
    let symbol : Image
    let title : String
    let subtitle: String
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            VStack {
                    HStack{
                        Text(symbol)
                            .font(.custom("SegoeUI-Bold", size: 30))
                            .foregroundColor(.green)
                        Text(title)
                            .font(.title2)
                    }
                    HStack {
                        Text(subtitle)
                            .font(.title3)
                        ZStack(alignment: .center) {
                            Circle()
                                .stroke(lineWidth: 5)
                                .opacity(0.3)
                                .foregroundColor(Color.gray)
                                .frame(width: 70, height: 50, alignment: .center)
                            
                            Circle()
                                .trim(from: 0, to: CGFloat(min(progress, 1.0)))
                                .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                .foregroundColor(Color.green)
                                .rotationEffect(Angle(degrees: -90))
                                .frame(width: 70, height: 50, alignment: .center)
                            
                            Text(String(format: "%.0f%%", progress * 100))
                                .font(.headline)
                                .foregroundColor(.black)
                                
                        }
                        Spacer()
                            .frame(width: 10)
                    }
                }
            .frame(width: 180, height: 120)
        }
    }
}
