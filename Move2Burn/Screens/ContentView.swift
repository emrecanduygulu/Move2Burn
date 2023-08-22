//
//  ContentView.swift
//  Move2Burn
//
//  Created by emre can duygulu on 18.08.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                CardView(symbol: Image(systemName:"figure.walk"), title: "Walking", subtitle: "12.487")
                
                CardView(symbol: Image(systemName:"figure.outdoor.cycle"), title: "Cycling", subtitle: "57.487")
                
            }
            .padding(.horizontal)
        }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
