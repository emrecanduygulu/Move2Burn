//
//  CardView.swift
//  Move2Burn
//
//  Created by emre can duygulu on 22.08.2023.
//

import SwiftUI

struct Activity {
    let id: Int
    let symbol : Image
    let title : String
    let subtitle: String
    
}

struct CardView: View {
    @State var activity: Activity
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            HStack {
                Text(activity.symbol)
                    .font(.custom("SegoeUI-Bold", size: 40))
                    .foregroundColor(.green)
                Spacer()
                    .frame(width: 40)
                VStack {
                    Text(activity.title)
                        .font(.custom("SegoeUI-Bold", size: 15))
                                        .foregroundColor(.black)
                    Spacer()
                        .frame(height: 10)
                    Text(activity.subtitle)
                        .font(.custom("SegoeUI-Bold", size: 10))
                                        .foregroundColor(.black)
                }
            }
        }
        .frame(width: 180, height: 60)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            CardView(activity: Activity(id: 0, symbol: Image(systemName: "figure.walk"), title: "Walking", subtitle: "23.253"))
        }
    }
}
