//
//  ContentView.swift
//  Memorize
//
//  Created by Stephen Marshall on 4/18/23.
//

import SwiftUI

struct ContentView: View {
    var icons: [String] = [
        "🤷‍♂️", "🥺", "🐞", "🌎", "🎙️", "✅", "📅", "🥒"
    ]
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(icons[0..<8], id: \.self) { emoji in
                    CardView(icon: emoji)
                }
            }
        }
        .padding(.horizontal, 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
